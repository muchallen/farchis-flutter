import 'package:farchis/Screens/main.dart';
import 'package:flutter/material.dart';

class Quotation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyQuotation()
    );
  }
}

class MyQuotation extends StatelessWidget {
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
                              Text("Service"),
                               SizedBox(width: 5.0,),
                               Flexible(
                                child: TextField(
                                  decoration: new InputDecoration(
                                    hintText: "e.g. panel beating, spray painting etc",
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
                                Text("Parts   "),
                                SizedBox(width: 5.0,),
                                Flexible(
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      hintText: "parts to be service e.g door, wheels etc",
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
                                Text("Details"),
                                SizedBox(width: 5.0,),
                                Flexible(
                                  child: TextField(
                                    decoration: new InputDecoration(
                                      hintText: " Full explanation of the service require",
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
                          Center(
                            child: Text(" Upload Image"),
                          ),
                          Center(
                            child: Icon(Icons.camera_alt),
                          ),
                          SizedBox(height: 10.0,),
                       RaisedButton(
                          onPressed: (){},
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
        ));}}
