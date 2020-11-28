package main

import (
	"context"
	"fmt"
	"log"
	"net/http"

	"github.com/vartanbeno/go-reddit/reddit"
)

var ctx = context.Background()

func main() {
	if err := run(); err != nil {
		log.Fatal(err)
	}
}

func run() (err error) {

	// Declaration of client details "id", "secret", "username", "password".

	withCredentials := reddit.WithCredentials("Fg94*******ZuA", "4qLecc88GeO************G4p8WYA", "No_Huckleberry1082", "************")
	client, _ := reddit.NewClient(withCredentials)
	if err != nil {
		return
	}

	client.OnRequestCompleted(logResponse)

	// Perform a search for subreddits using ‘memes’ as the search query.

	subreddits, _, err := reddit.DefaultClient().Subreddit.SearchNames(ctx, "memes")
	fmt.Println(subreddits)

	// This returns information about the "r/memes" subreddit.

	sr, _, err := reddit.DefaultClient().Subreddit.Get(ctx, "memes")
	fmt.Printf("%s was created on %s and has %d subscribers.\n", sr.NamePrefixed, sr.Created.Local(), sr.Subscribers)

	// This returns the posts posted in the last week (limited to 100 posts at max) of the subreddit.

	posts, _, err := client.Subreddit.TopPosts(context.Background(), "memes", &reddit.ListPostOptions{
		ListOptions: reddit.ListOptions{
			Limit: 100,
		},
		Time: "week",
	})
	if err != nil {
		return err
	}

	fmt.Printf("Received %d posts.\n", len(posts))

	// Function used for Upvoting a single post.

	client.Post.Upvote(ctx, "t3_k02mbl")

	// Upvoting the TopPosts that is received.

	for _, post := range posts {
		_, err = client.Post.Upvote(context.Background(), post.FullID)
		if err != nil {
			return err
		}
	}

	fmt.Printf("Upvoted %d posts.\n", len(posts))

	return
}

func logResponse(req *http.Request, res *http.Response) {
	fmt.Printf("%s %s %s\n", req.Method, req.URL, res.Status)
}
