import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class WebViewClass extends StatefulWidget {
  final String name;
  final String url;
   WebViewClass(this.name, this.url);
  @override
  _WebViewClassState createState() => _WebViewClassState(name,url);
}

class _WebViewClassState extends State<WebViewClass> {

  final String title;
  final String weburl;
  var isLoading=true;

  _WebViewClassState(this.title, this.weburl);

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(title),
        ),
        body: Stack(
          children: <Widget>[ WebView(
            initialUrl: weburl,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (_){
              setState(() {
                isLoading=false;
              });
            },
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          ),
            isLoading?Center( child: CircularProgressIndicator()) : Container(),
        ]),
      ),
    );
  }
}