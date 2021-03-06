import 'dart:io';

import 'package:farchis/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';

class Towing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyTowing()
    );
  }
}

class MyTowing extends StatefulWidget {
  @override
  _MyTowingState createState() => _MyTowingState();
}

class _MyTowingState extends State<MyTowing> {
  File _image;

  String newImage;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      print('Image Path $_image');
    });
  }

  Future uploadPic(BuildContext context) async{
    String fileName = basename(_image.path);
    newImage = fileName;
    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot=await uploadTask.onComplete;
    setState(() {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Image Uploaded')));
    });
  }

  final _firestore = Firestore.instance;

  final f =new DateFormat('yyyy-MM-dd hh:mm');

  String vehicle, location, contactperson, narration ,contactnumber;

  DateTime _dateTime;

  TextEditingController _vehicleController = TextEditingController();

  TextEditingController _narrationContoller = TextEditingController();

  TextEditingController _contactNameController = TextEditingController();

  TextEditingController _MobileController = TextEditingController();

  TextEditingController _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Builder(
            builder:(context)=> Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                  children:  <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 50.0),
                        Card(
                          margin: EdgeInsets.all(10.0),

                          child: Column(
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  child: Container(
                                      margin: EdgeInsets.all(8.0),
                                      child: Row(children: <Widget>[
                                        InkWell(
                                            onTap: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => StartPage()),
                                              );
                                            },
                                            child: Icon(Icons.arrow_back,color: Colors.white,)),
                                      SizedBox(width: 80.0,),
                                      Text("Request Towing", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight : FontWeight.bold),),]),),
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Vehicle  "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _vehicleController,
                                          onChanged: (value){
                                            vehicle = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "vehicle name and model",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.green, width: 1.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Location"),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _location,
                                          onChanged: (value){
                                            location = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: " e.g 105 Seke Road  ",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.green, width: 1.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Contact Name "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _contactNameController,
                                          onChanged: (value){
                                            contactperson = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "Contact Name ",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.green, width: 1.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Contact No.    "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _MobileController,
                                          onChanged: (value){
                                            contactnumber = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "Contact Number",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.green, width: 1.0),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Naration"),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _narrationContoller,
                                          onChanged: (value){
                                            narration = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: " Full explanation of the car state ,",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.green, width: 1.0),
                                            ),
                                          ),
                                          keyboardType: TextInputType.multiline,

                                          maxLines: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(" Upload Image"),
                                ),
                                Center(
                                  child: InkWell(
                                      onTap:(){   getImage();},
                                      child: Icon(Icons.camera_alt)),
                                ),
                                SizedBox(height: 10.0,),
                                RaisedButton(
                                  onPressed: (){
                                    if(vehicle==null|| location==null||contactnumber==null||contactperson==null||narration==null){
                                      Scaffold.of(context).showSnackBar(SnackBar(content: Text('please complete all fields')));
                                      return;

                                    }
                                    if(newImage==null){
                                      Scaffold.of(context).showSnackBar(SnackBar(content: Text('please upload an image')));
                                      return;
                                    }
                                    if(contactnumber.length!=10){
                                      Scaffold.of(context).showSnackBar(SnackBar(content: Text('invalid contact number ')));
                                      return;
                                    }

                                    uploadPic(context);
                                    _firestore.collection('tows').add({
                                      'vehicle': vehicle,
                                      'location': location,
                                      'contactPerson': contactperson,
                                      'contactNumber': contactnumber,
                                      'narration': narration,
                                      'date':f.format(DateTime.now()).toString() ,
                                      'image':newImage
                                    }).catchError((error){
                                      return;
                                    });
                                    _contactNameController.clear();
                                    _narrationContoller.clear();
                                    _location.clear();
                                    _MobileController.clear();
                                    _vehicleController.clear();
                                    _showToast(context);

                                  },
                                  color: Colors.blueAccent,

                                  child: Text('Send', style: TextStyle(fontSize: 20, color: Colors.white),),),
                                SizedBox(height: 10.0,),
                              ] ),
                        ),

                      ],
                    )
                  ]
              )
              ,),
          ),
        ));}}

void _showToast( BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text("Your request has been send"),
      action: SnackBarAction(
          label: 'close', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
