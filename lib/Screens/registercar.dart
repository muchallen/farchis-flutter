import 'package:farchis/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyRegisterCar()
    );
  }
}

class MyRegisterCar extends StatelessWidget {
  final _firestore = Firestore.instance;
  String name, regnumber, color,ownerName,ownerMobile,year;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _regnumberContoller = TextEditingController();
  TextEditingController _colorController = TextEditingController();
  TextEditingController _ownerNameController = TextEditingController();
  TextEditingController _ownerMobileController = TextEditingController();
  TextEditingController _year = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Builder(
            builder:(context) => Container(
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
                                      Text("Register Vehicle", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),]),),
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
                                          controller: _nameController,
                                          onChanged: (value){
                                            name = value;
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
                                      Text("Year      "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _year,
                                          onChanged: (value){
                                            year = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: " 2000 ",
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
                                      Text("Reg No. "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _regnumberContoller,
                                          onChanged: (value){
                                            regnumber = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: " vehicle reg number ",
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
                                      Text("Color     "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _colorController,
                                          onChanged: (value){
                                            color = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "e.g red  ",
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
                                      Text("Name     "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _ownerNameController,
                                          onChanged: (value){
                                            ownerName = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "e.g Owner Full Name  ",
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
                                      Text("Contact     "),
                                      SizedBox(width: 5.0,),
                                      Flexible(
                                        child: TextField(
                                          controller: _ownerMobileController,
                                          onChanged: (value){
                                            ownerMobile = value;
                                          },
                                          decoration: new InputDecoration(
                                            hintText: "Owner Mobile Contact No. ",
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
                                SizedBox(height: 10.0,),
                                RaisedButton(
                                  onPressed: (){
                                    _firestore.collection('cars').add({
                                      'vehicle': name,
                                      'regnumber': regnumber,
                                      'color': color,
                                      'ownerName':ownerName,
                                      'ownerMobile':ownerMobile,
                                      'year':year
                                    });
                                    _ownerNameController.clear();
                                    _ownerMobileController.clear();
                                    _colorController.clear();
                                    _year.clear();
                                    _regnumberContoller.clear();
                                    _nameController.clear();
                                    _showToast(context);
                                  },
                                  color: Colors.blueAccent,

                                  child: Text('Register', style: TextStyle(fontSize: 20, color: Colors.white),),),
                                SizedBox(height: 20.0,),
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
      content:  Text("Your vehicle has been registered successfully."),
      action: SnackBarAction(
          label: 'close', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}


