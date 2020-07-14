import 'package:farchis/main.dart';
import 'package:flutter/material.dart';

class RegisterCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyRegisterCar()
    );
  }
}

class MyRegisterCar extends StatelessWidget {
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
                                  Text("Register Vehicle`", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),]),),
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
                                      decoration: new InputDecoration(
                                        hintText: "e.g. Mercedes",
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
                                  Text("Model   "),
                                  SizedBox(width: 5.0,),
                                  Flexible(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        hintText: "e.g Fortuna , C200 etc",
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
                            SizedBox(height: 10.0,),
                            RaisedButton(
                              onPressed: (){},
                              color: Colors.blueAccent,

                              child: Text('Register', style: TextStyle(fontSize: 20, color: Colors.white),),),
                            SizedBox(height: 20.0,),
                          ] ),
                    ),

                  ],
                )
              ]
          )
          ,));}}
