import 'package:farchis/Screens/main.dart';
import 'package:flutter/material.dart';

class DrivingTipsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyDrivingTipsContainer()
    );
  }
}

class MyDrivingTipsContainer extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => StartPage()),
                                    );
                                  },
                                  child: Icon(Icons.arrow_back,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width:90.0),
                                Text("Driving Tips", style: TextStyle(fontWeight: FontWeight.bold),),


                              ],
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(100,0,100,0),
                                child: Divider(color: Colors.grey,)
                            ),
                            SizedBox(height: 30.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.traffic,
                                  color: Colors.green,
                                ),
                                SizedBox(width:10.0),
                                Text("Traffic Lights"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.check_circle_outline,color: Colors.redAccent),
                                SizedBox(width:10.0),
                                Text("Speed Limit "),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.question_answer,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("FAQ Driving"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.drive_eta,
                                  color: Colors.orangeAccent,),
                                SizedBox(width:10.0),
                                Text("Off Road Driving"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
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
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_car_wash,
                                  color: Colors.orangeAccent,
                                ),
                                SizedBox(width:10.0),
                                Text("Road Driving"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.directions_walk,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("Pedestrian"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.motorcycle,color: Colors.redAccent),
                                SizedBox(width:10.0),
                                Text("Cyclists"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.notification_important,
                                  color: Colors.lightBlue,),
                                SizedBox(width:10.0),
                                Text("Night Driving"),
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
    );
  }
}