// import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
        ),
        // body is the majority of the screen.
        body: PageViewDemo(),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
          child: FlatButton(
            child: Text(
              'Create an account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(15),
            color: Colors.deepPurpleAccent[400],
            textColor: Colors.white,
            onPressed: () {},
          ),
        )));
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
          // alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Align(
              alignment: Alignment(-1.4, -1.0),
              child: Image.asset(
                'assets/art-cloud@3x.png',
                width: 300,
                height: 450,
              ),
            ),
            Align(
              alignment: Alignment(1.65, 0.08),
              child: Image.asset(
                'assets/art-work@3x.png',
                width: 300,
                height: 280,
              ),
            ),
            Align(
                alignment: Alignment(-0.89, 0.32),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Hello!',
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Itim',
                            fontSize: 24))
                  ]),
                )),
            Align(
              alignment: Alignment(-0.87, 0.44),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'You own',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Itim',
                        fontSize: 42,
                      ))
                ]),
              ),
            ),
            Align(
              alignment: Alignment(-0.67, 0.7),
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'private Cloud is one step away.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 42,
                        ))
                  ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.75, 0.92),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Swipe left to get started.',
                      style: TextStyle(
                        color: Colors.purple[700],
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Itim',
                        fontSize: 20,
                      ))
                ]),
              ),
            )
          ]),
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        // alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/art-stairs@3x.png',
              width: 300,
              height: 450,
            ),
          ),
          Align(
              alignment: Alignment(-0.82, 0.49),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Your Premium Cloud',
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 26))
                ]),
              )),
          Align(
            alignment: Alignment(-0.05, 0.97),
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          'Launch your next campaign within minutes with Cloud Campaign Monitor.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Itim',
                        fontSize: 34,
                      ))
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
