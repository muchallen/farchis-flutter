import 'package:farchis/main.dart';
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
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width:80.0),
                                Text("Emergency Services"),

                              ],
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

                 margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                 child: Padding(

                   padding: EdgeInsets.all(8.0),

                   child: Column(
                     mainAxisSize: MainAxisSize.max,
                     children: <Widget>[
                       Row(
                         mainAxisSize: MainAxisSize.max,
                         children: <Widget>[
                           Card(
                             color: Colors.black26,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisSize: MainAxisSize.max,
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Container(
                                     height: 80.0,
                                     width: 100.0,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("images/hospitalcross.png"),

                                       ),
                                     ),
                                   ),

                                   Container(
                                     child: Text("Tap to call", style: TextStyle(color: Colors.white),),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Card(
                               color: Colors.lightBlue,

                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
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

                         ],
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Card(
                               color: Colors.lightBlue,

                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
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

                         ],
                       ),

                     ],
                   ),
                 ),
               ),

                ],
              ),
            ] ),
      ),
    );
  }
}