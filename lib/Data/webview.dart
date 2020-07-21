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

  _WebViewClassState(this.title, this.weburl);

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: WebView(
        initialUrl: weburl,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}