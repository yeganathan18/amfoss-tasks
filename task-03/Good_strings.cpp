#include <bits/stdc++.h>
using namespace std;
#define gc getchar_unlocked
#define foi(i,n) for(int i=0;i<n;i++)
#define fo(i,n) for(i=0;i<n;i++)
#define Fo(i,k,n) for(i=k;k<n?i<n:i>n;k<n?i+=1:i-=1)
#define ll long long
#define sfi(x)	scanf("%d",&x)
#define sfl(x)	scanf("%lld",&x)
#define sfs(s)	scanf("%s",s)
#define pi(x)	printf("%d\n",x)
#define pl(x)	printf("%lld\n",x)
#define ps(s)	printf("%s\n",s)
#define deb(x) cout << #x << "=" << x << endl
#define deb2(x, y) cout << #x << "=" << x << "," << #y << "=" << y << endl
#define pb push_back
#define mp make_pair
#define F first
#define S second
#define all(x) x.begin(), x.end()
#define clr(x) memset(x, 0, sizeof(x))
#define sortall(x) sort(all(x))
#define tr(it, a) for(auto it = a.begin(); it != a.end(); it++)
#define PI 3.1415926535897932384626
typedef pair<int, int>	pii;
typedef pair<ll, ll>	pl;
typedef vector<int>		vi;
typedef vector<ll>		vl;
typedef vector<pii>		vpii;
typedef vector<pl>		vpl;
typedef vector<vi>		vvi;
typedef vector<vl>		vvl;
typedef vector<string> vs;



    
   

void solve(){
    int n;
    cin>>n;
    string s;
    cin>>s;
    if (count(all(s),'0') == count(all(s),'1')) cout<<"2";
    else cout<<"1";
    
}



int main() {
    ios_base::sync_with_stdio(0), cin.tie(0), cout.tie(0);
    //freopen("test_input.txt","r",stdin);
    //freopen("output.txt","w",stdout);
    int t = 1;
    //cin >> t;
    while(t--) {
        solve();
        
    }
    
    
    return 0;
}