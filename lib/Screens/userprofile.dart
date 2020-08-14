import 'package:farchis/Data/Utility.dart';
import 'package:farchis/Data/dbHelper.dart';
import 'package:farchis/Data/usermodel.dart';
import 'package:farchis/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';
import 'dart:io';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _image;
  String imgString,fullName,email,mobile;
  DBHelper dbHelper= new DBHelper();
  List<User> users;

  @override
  Widget build(BuildContext context) {

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery).then((imgFile) {
        imgString = Utility.base64String(imgFile.readAsBytesSync());
      });

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }


    Future uploadPic(BuildContext context) async{
      String fileName = basename(_image.path);
      print(fileName);
      StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
      StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
      StorageTaskSnapshot taskSnapshot=await uploadTask.onComplete;
      setState(() {
        print("Profile Picture uploaded");
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Edit Profile'),
      ),
      body: ListView(
        children :<Widget>[Builder(
          builder: (context) =>  Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Color(0xff476cfb),
                        child: ClipOval(
                          child: new SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: (_image!=null)?Image.file(
                              _image,
                              fit: BoxFit.fill,
                            ):Image.network(
                              "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.camera,
                          size: 30.0,
                        ),
                        onPressed: () {
                          getImage();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 240,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (value){
                          fullName=value;
                        },
                        decoration: new InputDecoration(
                          hintText: " Full Name ",
                        ),
                      ),
                      TextField(
                        onChanged: (value){
                          email=value;
                        },
                        decoration: new InputDecoration(
                          hintText: " Email ",
                        ),
                      ),
                      TextField(
                        onChanged: (value){
                          mobile=value;
                        },
                        decoration: new InputDecoration(
                          hintText: "Mobile e.g 0773245678 ",
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        //uploadPic(context);
                        User user = new User (0,fullName,email,mobile,imgString);
                        dbHelper.save(user);
                      },

                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Update',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
    ]  ),

    );
  }
}