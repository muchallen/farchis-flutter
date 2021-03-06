import 'dart:typed_data';

import 'package:farchis/Data/Utility.dart';
import 'package:farchis/Data/dbHelper.dart';
import 'package:farchis/Data/usermodel.dart';
import 'package:farchis/Screens/TrafficUpdatesContainer.dart';
import 'package:farchis/Screens/drivingtips.dart';
import 'package:farchis/Screens/drivingtipscontainer.dart';
import 'package:farchis/Screens/emergencyservices.dart';
import 'package:farchis/Screens/events.dart';
import 'package:farchis/Screens/insuaranceservices.dart';
import 'package:farchis/Screens/ourService.dart';
import 'package:farchis/Screens/quotation.dart';
import 'package:farchis/Screens/registercar.dart';
import 'package:farchis/Screens/towing.dart';
import 'package:farchis/Screens/userprofile.dart';
import 'package:farchis/Screens/weatherapp.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  runApp(StartPage());
}
class StartPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStartPage()
    );
  }
}

class MyStartPage extends StatefulWidget {

  @override
  _MyStartPageState createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {
  DBHelper dbHelper = new DBHelper() ;

  List<User> profile = [];
  String email;
  Uint8List image;

  Future refreshImages () async{
     await dbHelper.getPhotos().then((value) => {
       if(value!=null){
     setState(() {
       profile= value;
       image=Utility.dataFromBase64String(profile[0].photoName);
     })}
      });

     }

  _MyStartPageState(){
  refreshImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
             Column(
              children: <Widget>[
                SizedBox(height: 50.0,),
                Card(
                  elevation: 20,
                  color: Color(0x00000000),
                  margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                  child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child:profile.length>0? CircleAvatar(
                                radius: 40,
                                backgroundColor: Color(0x00000000),
                                child: CircleAvatar(
                                  backgroundColor: Color(0x00000000),
                                  radius: 40,
                                  backgroundImage:MemoryImage(image) ,
                                ),
                              ): CircleAvatar(
                                radius: 40,
                                backgroundColor: Color(0x00000000),
                                child: CircleAvatar(
                                  backgroundColor: Color(0x00000000),
                                  radius: 40,
                                  backgroundImage:AssetImage('images/pers.png') ,
                                ),
                            ),),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[ Text(profile.length>0?profile[0].fullName:"username",textAlign: TextAlign.left, style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                Text(profile.length>0?profile[0].email:"user@example.com",textAlign: TextAlign.left, style: TextStyle(color: Colors.white,fontSize: 10 ),),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProfilePage()),
                                    );
                                  },
                                  child: const Text('Update Profile', style: TextStyle(fontSize: 10)),
                                ),
                              ],
                            )
                          ]
                  ),
                ),
                SizedBox(height: 10.0,),
                Card(
                  margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            // Within the `FirstRoute` widget
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OurServices()),
                              );
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.store_mall_directory,
                              color: Colors.redAccent,
                              ),
                              SizedBox(width:10.0),
                              Text("Our Services"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),
                        InkWell(
                            onTap: () {
                              // Within the `FirstRoute` widget
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Quotation()),
                              );
                            },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.mode_edit,color: Colors.blueAccent),
                              SizedBox(width:10.0),
                              Text("Get A Quote"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            // Within the `FirstRoute` widget
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Towing()),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.add_alert,color: Colors.green),
                              SizedBox(width:10.0),
                              Text("Request Towing"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            // Within the `FirstRoute` widget
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterCar()),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.directions_car,
                              color: Colors.orange,),
                              SizedBox(width:10.0),
                              Text("Register Vehicle"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),
                        InkWell(onTap: () {
                          // Within the `FirstRoute` widget
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyEvents()),
                          );
                        },
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.event,color: Colors.blueAccent),
                              SizedBox(width:10.0),
                              Text("Events"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),

                      ],
                    ),
                  )
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              UrlLauncher.launch("tel://2222222222");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.call,
                                  color: Colors.green,
                                ),
                                SizedBox(width:10.0),
                                Text("Call Farchis"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          Divider(),
                          InkWell(
                              onTap: () {
                                // Within the `FirstRoute` widget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DrivingTipsContainer("Driving Tips", "https://www.aazimbabwe.co.zw/2018/01/17/skills-every-new-driver-should-have/")),
                                );
                              },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.security,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("Driving Tips"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              // Within the `FirstRoute` widget
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EmergenceService()),
                              );
                            },

                            child: InkWell(
                              onTap: () {
                                // Within the `FirstRoute` widget
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => EmergenceService()),
                                );
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.directions_run,color: Colors.deepOrange),
                                  SizedBox(width:10.0),
                                  Text("Emergency Services"),
                                  Spacer(),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              // Within the `FirstRoute` widget
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => InsuaranceServices()),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.assignment,
                                  color: Colors.purple,),
                                SizedBox(width:10.0),
                                Text("Insurance Cover"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          Divider(),

                        ],
                      ),
                    )
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TrafficUpdatesContainer("Traffic Updates","https://www.google.com/maps/place/")),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.network_check,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(width:10.0),
                                Text("Convenience Services"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Icon(Icons.headset_mic,color: Colors.orange),
                              SizedBox(width:10.0),
                              Text("Customer Support"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WeatherReport()),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.cloud_queue,
                                  color: Colors.blueAccent,),
                                SizedBox(width:10.0),
                                Text("Weather Forecast"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Icon(Icons.message,color: Colors.green),
                              SizedBox(width:10.0),
                              Text("FAQ"),
                              Spacer(),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                          Divider(),

                        ],
                      ),
                    )
                ),

              ],
            ),
         ] ),
        ),
      ),
    );
  }
}



