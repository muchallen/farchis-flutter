
import 'dart:io';

import 'package:farchis/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';

class Quotation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyQuotation()
    );
  }
}

class MyQuotation extends StatefulWidget {
  @override
  _MyQuotationState createState() => _MyQuotationState();
}

class _MyQuotationState extends State<MyQuotation> {
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
      print("Profile Picture uploaded");
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Image Uploaded')));
    });
  }




  final _firestore = Firestore.instance;
  final f =new DateFormat('yyyy-MM-dd hh:mm');
  String service, parts, contact,contactNumber,vehicleName,email;
  List<String> options = <String>['Panel Beating', 'Spray Painting',
  'Brakes and Suspension',
  'Wheel Alignment',
  'WindScreen Attension',
  'Lights Focusing',
  'Car Rebuilding',
  'Vehicle Inspection',
  'Pimp My Ride',
  'Car Veleting',];
  String dropdownValue = 'Panel Beating';
  TextEditingController _partsController = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();
  TextEditingController _vehicleNameController = TextEditingController();
  TextEditingController _MobileController = TextEditingController();
  TextEditingController _contactName = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context)=>Container(
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
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 10.0,),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => StartPage()),
                                      );
                                    },
                                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                                  SizedBox(width: 80.0,),
                                  Text("Get A Qoute", textAlign: TextAlign.center,style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),),
                                ],
                              ),
                               color: Colors.blueAccent,
                            ),
                            SizedBox(height: 20,),
                           Padding(
                             padding: EdgeInsets.all(10.0),
                             child: Row(
                              children: <Widget>[
                                Text("Vehicle"),
                                 SizedBox(width: 5.0,),
                                 Flexible(
                                  child: TextField(
                                    controller: _vehicleNameController,
                                    onChanged: (value){
                                      vehicleName = value;
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
                                    keyboardType: TextInputType.text,

                                    maxLines: 1,
                                  ),
                                )
                              ],
                          ),
                           ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Service"),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15,0,8.0,0),
                              child: DropdownButton<String>(
                                  isExpanded: true,

                                  value: dropdownValue,

                                  onChanged: (String newValue) {
                                    setState(() {
                                      dropdownValue = newValue;
                                    });
                                  },
                                  style: TextStyle(color: Colors.black),
                                  selectedItemBuilder: (BuildContext context) {
                                    return options.map((String value) {
                                      return Text(
                                        dropdownValue,
                                        style: TextStyle(color: Colors.black),
                                      );
                                    }).toList();
                                  },
                                  items: options.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                              ),
                            ),
                          ),
                            ]),
                              )),

                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Others   "),
                                  SizedBox(width: 5.0,),
                                  Flexible(
                                    child: TextField(
                                      controller: _partsController,
                                      onChanged: (value){
                                        parts = value;
                                      },
                                      decoration: new InputDecoration(
                                        hintText: "detailed description of other services",
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
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Contact "),
                                  SizedBox(width: 5.0,),
                                  Flexible(
                                    child: TextField(
                                      controller: _contactName,
                                      onChanged: (value){
                                        contact = value;
                                      },
                                      decoration: new InputDecoration(
                                        hintText: " Contact Name",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green, width: 1.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,

                                      maxLines: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Mobile  "),
                                  SizedBox(width: 5.0,),
                                  Flexible(
                                    child: TextField(
                                      controller: _contactNumberController,
                                      onChanged: (value){
                                        contactNumber = value;
                                      },
                                      decoration: new InputDecoration(
                                        hintText: " Contact Number",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green, width: 1.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.phone,

                                      maxLines: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Email    "),
                                  SizedBox(width: 5.0,),
                                  Flexible(
                                    child: TextField(
                                      controller: _emailContoller,
                                      onChanged: (value){
                                        email = value;
                                      },
                                      decoration: new InputDecoration(
                                        hintText: " email address ",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.blue, width: 1.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green, width: 1.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.emailAddress,

                                      maxLines: 1,
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
                                onTap: (){
                                  getImage();
                                },
                                  child: Icon(Icons.camera_alt)),
                            ),
                            SizedBox(height: 10.0,),
                         RaisedButton(
                            onPressed: (){
                              uploadPic(context);

                              _firestore.collection('servs').add({
                                'vehicle':vehicleName,
                                'service': dropdownValue,
                                'details': parts,
                                'email':email,
                                'contact':contact,
                                'mobile':contactNumber,
                                'date': f.format(DateTime.now()).toString(),
                                'image':newImage
                              });
                              _contactNumberController.clear();
                              _emailContoller.clear();
                              _partsController.clear();
                              _vehicleNameController.clear();
                              _contactName.clear();
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
void _showToast(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text("Your request has been sent."),
      action: SnackBarAction(
          label: 'close', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
