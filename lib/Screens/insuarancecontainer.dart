import 'package:farchis/Data/webview.dart';
import 'package:flutter/material.dart';



class InsuaraceContainer extends StatelessWidget {
  final String url;
  final String name;

  InsuaraceContainer(this.name, this.url);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,

      children: <Widget>[
        Container(
          width: 300.0,
          height: 500.0,
          child: WebViewClass(name,url),),

      ],


      );



      WebViewClass(name, url);
  }
}