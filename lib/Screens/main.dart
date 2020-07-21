import 'package:farchis/Screens/drivingtips.dart';
import 'package:farchis/Screens/emergencyservices.dart';
import 'package:farchis/Screens/insuaranceservices.dart';
import 'package:farchis/Screens/ourService.dart';
import 'package:farchis/Screens/quotation.dart';
import 'package:farchis/Screens/registercar.dart';
import 'package:farchis/Screens/towing.dart';
import 'package:farchis/Screens/weatherapp.dart';
import 'package:flutter/material.dart';

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

class MyStartPage extends StatelessWidget {
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
              SizedBox(height: 100.0,),
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
                            Icon(Icons.add_alert,color: Colors.yellowAccent),
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
                            color: Colors.black26,),
                            SizedBox(width:10.0),
                            Text("Register Vehicle"),
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
                        Row(
                          children: <Widget>[
                            Icon(Icons.call,
                              color: Colors.redAccent,
                            ),
                            SizedBox(width:10.0),
                            Text("Call Farchis"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        InkWell(
                            onTap: () {
                              // Within the `FirstRoute` widget
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DrivingTips()),
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
                                Icon(Icons.directions_run,color: Colors.yellowAccent),
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
                                color: Colors.black26,),
                              SizedBox(width:10.0),
                              Text("Insuarance Cover"),
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
                        Row(
                          children: <Widget>[
                            Icon(Icons.traffic,
                              color: Colors.redAccent,
                            ),
                            SizedBox(width:10.0),
                            Text("Traffic Updates"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Icon(Icons.hotel,color: Colors.blueAccent),
                            SizedBox(width:10.0),
                            Text("Hotels"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Icon(Icons.headset_mic,color: Colors.yellowAccent),
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
                                color: Colors.black26,),
                              SizedBox(width:10.0),
                              Text("Weather Forecast"),
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
                        Row(
                          children: <Widget>[
                            Icon(Icons.restaurant,
                              color: Colors.redAccent,
                            ),
                            SizedBox(width:10.0),
                            Text("Eating Places"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Icon(Icons.event,color: Colors.blueAccent),
                            SizedBox(width:10.0),
                            Text("Events"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Icon(Icons.message,color: Colors.yellowAccent),
                            SizedBox(width:10.0),
                            Text("FAQ"),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Icon(Icons.stars,
                              color: Colors.black26,),
                            SizedBox(width:10.0),
                            Text("Rate Our App"),
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



