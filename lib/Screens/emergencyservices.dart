import 'package:farchis/Screens/main.dart';
import 'package:flutter/material.dart';

class EmergenceService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyEmergencyServices()
    );
  }
}

class MyEmergencyServices extends StatelessWidget {
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
                                  SizedBox(width:60.0),
                                  Text("Emergency Services", style: TextStyle(fontWeight: FontWeight.bold),),


                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(100,0,100,0),
                                  child: Divider(color: Colors.grey,)
                              ),
                              SizedBox(height: 30.0,),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      color: Colors.lightBlue,

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height: 80.0,
                                              width: 100.0,
                                          decoration: BoxDecoration(
                                          image: DecorationImage(
                                          image: AssetImage("images/mars.png"),

                                              ),
                                            ),

                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              child: Text("Tap to call", style: TextStyle(color: Colors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      color: Colors.redAccent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height: 80.0,
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("images/emras.png"),

                                                ),
                                              ),

                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              child: Text("Tap to call" , style: TextStyle(color: Colors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                    color: Colors.deepPurple,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height: 80.0,
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("images/netstar.png"),

                                                ),
                                              ),

                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              child: Text("Tap to call", style: TextStyle(color: Colors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      color: Colors.orangeAccent,
                                      child: Padding(

                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height: 80.0,
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("images/psmi.png"),
                                                ),
                                              ),

                                            ),
                                            SizedBox(height: 5.0,),
                                            Container(
                                              child: Text("Tap to call", style: TextStyle(color: Colors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                    ),
                 SizedBox(height: 10.0,),
                 Card(
                   margin: EdgeInsets.fromLTRB(16.0,0,16.0,0),
                   child: Row(
                     mainAxisSize: MainAxisSize.max,
                     children: <Widget>[
                       Container(
                           padding: EdgeInsets.fromLTRB(20, 8.0, 20, 8),
                           child: Container(
                             width: 100.0,
                              height: 80.0,
                           decoration: BoxDecoration(
                               image : DecorationImage(
                               image: AssetImage("images/hospitalcross.png")
                              ),
                           ),
                             child: null,
                           ),
                       ),
                       Column(
                         children: <Widget>[
                           Text("Hospitals", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),),
                           SizedBox(height: 5.0,),
                           Text("+263 673 987"),
                           Text("+263 673 987"),
                           Text("Tap to call", style: TextStyle(color: Colors.green),)
                         ],
                       )
                     ],
                   ),
                 ),
                    SizedBox(height: 10.0,),
                    Card(
                      margin: EdgeInsets.fromLTRB(16.0,0,16.0,0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8.0, 20, 8),
                            child: Container(
                              width: 100.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage("images/zrplogo.png")
                                ),
                              ),
                              child: null,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Police", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                              SizedBox(height: 5.0,),
                              Text("+263 673 987"),
                              Text("+263 673 987"),
                              Text("Tap to call", style: TextStyle(color: Colors.green),)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Card(
                      margin: EdgeInsets.fromLTRB(16.0,0,16.0,0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 8.0, 20, 8),
                            child: Container(
                              width: 100.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage("images/fireservicelogo.png")
                                ),
                              ),
                              child: null,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text("FireBrigade", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),),
                              SizedBox(height: 5.0,),
                              Text("+263 673 987"),
                              Text("+263 673 987"),
                              Text("Tap to call", style: TextStyle(color: Colors.green),)
                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                ),
              ] ),
        ),
      ),
    );
  }
}