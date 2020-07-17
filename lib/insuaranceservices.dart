import 'package:farchis/main.dart';
import 'package:flutter/material.dart';

class InsuaranceServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyInsuaranceServices()
    );
  }
}

class MyInsuaranceServices extends StatelessWidget {
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
                                SizedBox(width:60.0),
                                Text("Insuarance Services", style: TextStyle(fontWeight: FontWeight.bold),),
                                

                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(100,0,100,0),
                              child: Divider(color: Colors.grey,)
                            ),
                            SizedBox(height: 30.0,),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/oldmutual.png")),
                                SizedBox(width:10.0),
                                Text("Old Mutual"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/nicoz.png")),
                                SizedBox(width:10.0),
                                Text("Nicoz Diamond"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/cell.png")),
                                SizedBox(width:10.0),
                                Text("Econet insuarance"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/zimnat.png")),
                                SizedBox(width:10.0),
                                Text("Zimnat Insuarance"),
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
                            Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("images/cell.png")),
                                SizedBox(width:10.0),
                                Text("Cell Insuarance"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/minerva_insurance.png")),
                                SizedBox(width:10.0),
                                Text("THI Insuarance"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/evolution_insurance.png")),
                                SizedBox(width:10.0),
                                Text("Evolution Insuarance"),
                                Spacer(),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("images/quality_insurance.jpg")),
                                SizedBox(width:10.0),
                                Text("Quality Insuarance"),
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