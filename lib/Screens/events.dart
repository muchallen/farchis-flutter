import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farchis/main.dart';
import 'package:farchis/Screens/servicescontainer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

//class Events extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        home: MyEvents()
//    );
//  }
//}

class MyEvents extends StatefulWidget {
  @override
  _MyEventsState createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  Future getEvents() async{
    var firestore = Firestore.instance;



    QuerySnapshot qn = await firestore.collection("events").getDocuments();
    return qn.documents;
  }

  navigateToDetails(DocumentSnapshot post){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsPage(post: post,) ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder(
            future: getEvents(),
            builder: (_,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: Text("Loading"),
            );
          }else{
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (_,index){
                  return Container(
                    child: Card(
                      child: ListTile(
                        onTap: ()=>navigateToDetails(snapshot.data[index]),
                        title: Text(snapshot.data[index].data["event"]),

                      ),
                    ),
                  );

            });

          }

        }) ,
      ),
    );
  }
}

class DetailsPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailsPage({this.post});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Details"),
      ),
      body: Container(
        child: Card(
          child: ListTile(
            title: Text(widget.post.data["event"]),
            subtitle: Text(widget.post.data["details"]),
          )
        ),
      ),
    );
  }
}
