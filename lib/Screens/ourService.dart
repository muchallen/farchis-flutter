import 'package:farchis/Screens/main.dart';
import 'package:farchis/Screens/servicescontainer.dart';
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
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Panel Beating","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["panelslide1.jpg","panelslide2.jpg","panelslide3.jpg"])),
                                  );
                                },
                                child: Row(
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
                              ),
                              Divider(),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Spray Painting","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["spray1.jpg","spray2.jpg","spray3.jpg"])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.palette,color: Colors.redAccent),
                                    SizedBox(width:10.0),
                                    Text("Spray Painting "),
                                    Spacer(),
                                    Icon(Icons.chevron_right)
                                  ],
                                ),
                              ),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Brakes and Suspension","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["brakes1.jpg","brakes2.jpg","brakes3.jpg"])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.build,color: Colors.blueAccent),
                                    SizedBox(width:10.0),
                                    Text("Brakes and Suspension"),
                                    Spacer(),
                                    Icon(Icons.chevron_right)
                                  ],
                                ),
                              ),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Car Veleting","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["carveleting1.jpg","carveleting2.jpg","carveleting3.jpg"])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.directions_car,
                                      color: Colors.orangeAccent,),
                                    SizedBox(width:10.0),
                                    Text("Car Veleting"),
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
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Wheel Alignment","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["wheelalignment1.jpg","wheelalignment2.jpg","wheelalignment3.jpg"])),
                                  );
                                },
                                child: Row(
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
                              ),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Spare Parts","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["parts1.jpg","parts2.jpg","parts3.jpg"])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.settings,color: Colors.blueAccent),
                                    SizedBox(width:10.0),
                                    Text("Spare Parts"),
                                    Spacer(),
                                    Icon(Icons.chevron_right)
                                  ],
                                ),
                              ),
                              Divider(),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ServiceContainer("Windscreen attension","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["windscreen1.jpg","windscreen2.jpg"])),
                                    );
                                  },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.build,color: Colors.redAccent),
                                    SizedBox(width:10.0),
                                    Text("Windscreen attension"),
                                    Spacer(),
                                    Icon(Icons.chevron_right)
                                  ],
                                ),
                              ),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Lights Focusing","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["lights2.jpg","lights4.jpg",])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.highlight,
                                      color: Colors.lightBlue,),
                                    SizedBox(width:10.0),
                                    Text("Lights Focusing"),
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
                                onTap:() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Car Rebuilding","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["carrebuild1.jpg","carrebuild3.jpg","carrebuild2.jpg"])),
                                  );
                                },
                                child: Row(
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
                              ),
                              Divider(),
                              InkWell(
                                onTap:(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Vehicle Inspection","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["carinspection1.jpg","carinspection2.png","carinspection3.jpg"])),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.security,color: Colors.blueAccent),
                                    SizedBox(width:10.0),
                                    Text("Vehicle Inspection"),
                                    Spacer(),
                                    Icon(Icons.chevron_right)
                                  ],
                                ),
                              ),
                              Divider(),
                              InkWell(
                                onTap:(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ServiceContainer("Pimp My Ride","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",["pimp1.jpg","pimp2.jpg"])),
                                  );
                                } ,
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.local_car_wash,color: Colors.orangeAccent),
                                    SizedBox(width:10.0),
                                    Text("Pimp My Ride"),
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

                  ],
                ),
              ] ),
        ),
      ),
    );
  }
}