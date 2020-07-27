import 'package:farchis/Data/webview.dart';
import 'package:flutter/material.dart';



class DrivingTipsContainer extends StatelessWidget {
  final String url;
  final String name;

  DrivingTipsContainer(this.name, this.url);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: WebViewClass(name, url));
  }
}