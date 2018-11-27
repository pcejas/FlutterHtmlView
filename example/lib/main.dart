import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String html = '''
        <h1>This is &nbsp;heading 1</h1>
        <h2>This is heading 2</h2>
        <h3>This is heading 3</h3>
        <h4>This is heading 4</h4>
        <h5>This is heading 5</h5>
        <h6>This is heading 6</h6>
        <a href="/some/path">/some/path</a>
        <img alt="Test Image" src="https://source.unsplash.com/random/300x200">
        <video src="https://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_5mb.mp4"></video>
        <a data-id="1" href="https://google.com">Go Google</a>
        <a href="mailto:ponnamkarthik3@gmail.com">Mail to me</a>
        
        <video id="video1" >
          <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
        </video>
         
        <img src="/photo-1536816579748-4ecb3f03d72a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=51f0883b2a9f3dacb4501c350c65ce00&auto=format&fit=crop&w=634&q=80">
        ''';

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Plugin example app'),
        ),
        body: new SingleChildScrollView(
          child: new Center(
            child: new HtmlView(
              data: html,
              baseURL: "https://images.unsplash.com",
              onLaunchFail: (url) {
                print("launch $url failed");
              },
            ),
          ),
        ),
      ),
    );
  }
}
