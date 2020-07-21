import 'package:farchis/Screens/main.dart';
import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyServices()
    );
  }
}

class MyServices extends StatelessWidget {
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
                                SizedBox(width:80.0),
                                Text("Our Services", style: TextStyle(fontWeight: FontWeight.bold),),


                              ],
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(100,0,100,0),
                                child: Divider(color: Colors.grey,)
                            ),
                            SizedBox(height: 30.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.directions_car,
                                  color: Colors.grey,
                                ),
                                SizedBox(width:10.0),
                                Text("Panel Beating"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.palette,color: Colors.redAccent),
                                SizedBox(width:10.0),
                                Text("Spray Painting "),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.build,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("Brakes and Suspension"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.directions_car,
                                  color: Colors.orangeAccent,),
                                SizedBox(width:10.0),
                                Text("Car Veleting"),
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
                                Icon(Icons.directions_car,
                                  color: Colors.orangeAccent,
                                ),
                                SizedBox(width:10.0),
                                Text("Wheel Alignment"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.settings,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("Spare Parts"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.build,color: Colors.redAccent),
                                SizedBox(width:10.0),
                                Text("Windscreen attension"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.highlight,
                                  color: Colors.lightBlue,),
                                SizedBox(width:10.0),
                                Text("Lights Focusing"),
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
                                Icon(Icons.directions_car,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(width:10.0),
                                Text("Car Rebuilding"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.security,color: Colors.blueAccent),
                                SizedBox(width:10.0),
                                Text("Vehicle Inspection"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_car_wash,color: Colors.orangeAccent),
                                SizedBox(width:10.0),
                                Text("Pimp My Ride"),
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