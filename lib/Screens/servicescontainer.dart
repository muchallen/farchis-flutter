import 'package:farchis/Data/webview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ServiceContainer extends StatelessWidget {
  String title;
  String content;
  List images;

  ServiceContainer(this.title, this.content, this.images);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/background.jpg"),
    fit: BoxFit.cover,
    ),
    ),
          child: ListView(
            children: <Widget>[
             Padding(
               padding: const EdgeInsets.fromLTRB(0,5.0,0,5.0),
               child: CarouselSlider(
                options: CarouselOptions(height: 200.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.grey
                          ),
                          child: Image.asset('images/$i')
                      );
                    },
                  );
                }).toList(),
            ),
             ),
              Card(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Center(child: Text("$title", style: TextStyle(color:Colors.lightBlue, fontSize: 20.0, fontWeight: FontWeight.bold,),)),
                      SizedBox(height: 10.0,),
                      Text("$content"),


                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                   FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: Image.asset("images/facebookbutton.png"),
                     
                      backgroundColor: Colors.blueAccent,
                    ),
                    SizedBox(width: 5.0,),


                  ],
                ),
              )
      ]
          ),

        )
    );
  }
}