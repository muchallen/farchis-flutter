import 'package:farchis/Data/webview.dart';
import 'package:flutter/material.dart';



class InsuaraceContainer extends StatelessWidget {
  final String url;
  final String name;

  InsuaraceContainer(this.name, this.url);

  @override
  Widget build(BuildContext context) {
    return WebViewClass(name, url);
  }
}