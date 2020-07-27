import 'package:farchis/Data/wether/mainForecast.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WeatherReport extends StatefulWidget {
  @override
  _WeatherReportState createState() => _WeatherReportState();
}

class _WeatherReportState extends State<WeatherReport> {

  BuildContext ctx;

  final location = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    location.dispose();
    super.dispose();
  }

  String city;
  final DateFormat formatter = DateFormat('E');
  List<ListElement> list;
  int humidity;
  double temperature;
  Description description;
  double speed;
  DateTime day;
  String icon;
  String dummy;
  void findWeather(String location,BuildContext context) {
    getWeather(location,context);
  }

  Future getWeather(String location, BuildContext cont) async {
    http.Response response = await http.get(
        "http://api.openweathermap.org/data/2.5/forecast?q=" + location +"&units=metric"
            "&appid=40613003a5d4c6c94a42032d0d522c43").catchError((onError){
              _showToast("Network Error Try Later!",cont);
    });
    if (response.statusCode == 200) {
      city = location;
      var results = response.body;
      setState(() {
        try {
          list = forecastFromJson(results.toString()).list;
        }
        catch (error) {
          print("failed to convert");
        }
        humidity = list[0].main.humidity;
        temperature = list[0].main.temp;
        dummy = list[0].weather[0].descriptionstr;

        speed = list[0].wind.speed;
        day = list[0].dtTxt;


        print("humidity " + humidity.toString() + "\n" +
            "temperature " + temperature.toString() + "\n" +
            "description " + dummy.toString() + "\n" +
            "windspeed " + speed.toString() + "\n" +
            "date " + formatter.format(day).toString() + "\n"
        );
      });
    } else {
      print("failed try again");
     return _showToast("Enter Correct Location! ",cont);
    }
  }

  @override
  void initState() {
    super.initState();
    getWeather("Zimbabwe", null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/weatherreport.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  SizedBox(height: 30.0,),
                  Card(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.arrow_back, color: Colors.black,),
                            Container(
                              width: 250.0,

                              child: TextField(
                                controller: location,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your city eg Harare,ZW'
                                ),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  findWeather(location.text.toString(),context);
                                },
                                child: Icon(Icons.search, color: Colors.black,)),
                          ],

                        ),
                      )
                  ),
                  SizedBox(height: 20.0,),
                  Card(
                    color: Color(0x00000000),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Text("Today's Weather", style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
                        SizedBox(height: 5.0,),
                        Text(city == null ? "" : city, style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[0].weather[0].iconstr+"@2x.png"
                            ),

                            Text(list == null ? "loading" : list[0].main.temp
                                .toString() + "\u00B0"),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          list == null ? "loading" :"Description : " +list[0].weather[0].descriptionstr
                              .toString(), style: TextStyle(fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.orange),),
                        SizedBox(height: 10.0,),
                        Text(list == null ? "loading" : "Windspeed : " +
                            list[0].wind.speed.toString(), style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.orange),),
                        SizedBox(height: 14.0,),
                        Text(list == null ? "loading" : "Humidity : " +
                            list[0].main.humidity.toString(), style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.orange),),
                        SizedBox(height: 10.0,),


                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 200,
                            width: 200,
                            child: Card(
                              color: Color(0x00000000),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[ Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[3].weather[0].iconstr+"@2x.png"
                                  ),
                                    Text(
                                        list == null ? "loading" : list[3].main.temp
                                            .toString()+"\u00B0",style: TextStyle(color: Colors.white),),
                                    Text(list == null ? "loading" : list[3]
                                        .weather[0].descriptionstr, style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic
                                    ), ),
                                    Text(
                                        list == null ? "loading" : formatter.format(
                                            list[3].dtTxt).toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),

                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(

                            ),
                            child: Card(
                              color: Color(0x00000000),
                              child: Center(

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[12].weather[0].iconstr+"@2x.png"
                                    ),
                                    Text(
                                      list == null ? "loading" : list[12].main.temp
                                          .toString()+"\u00B0",style: TextStyle(color: Colors.white),),
                                    Text(list == null ? "loading" :list[12]
                                        .weather[0].descriptionstr.toString(), style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic
                                    ), ),
                                    Text(
                                      list == null ? "loading" : formatter.format(
                                          list[12].dtTxt).toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),

                          ),
                          Container(
                            decoration: BoxDecoration(

                            ),
                            margin: EdgeInsets.all(5.0),
                            height: 200,
                            width: 200,
                            child: Card(
                              color: Color(0x00000000),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[
                                    Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[21].weather[0].iconstr+"@2x.png"
                                    ),
                                    Text(
                                      list == null ? "loading" : list[21].main.temp
                                          .toString()+"\u00B0",style: TextStyle(color: Colors.white),),
                                    Text(list == null ? "loading" : list[21]
                                        .weather[0].descriptionstr, style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic
                                    ), ),
                                    Text(
                                      list == null ? "loading" : formatter.format(
                                          list[21].dtTxt).toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),

                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: 200,
                            width: 200,
                            child: Card(
                              color:  Color(0x00000000),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[

                                    Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[30].weather[0].iconstr+"@2x.png"
                                    ),
                                    Text(
                                      list == null ? "loading" : list[30].main.temp
                                          .toString()+"\u00B0",style: TextStyle(color: Colors.white),),
                                    Text(list == null ? "loading" : list[30]
                                        .weather[0].descriptionstr, style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic
                                    ), ),
                                    Text(
                                      list == null ? "loading" : formatter.format(
                                          list[30].dtTxt).toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),

                          ),
                          Container(
                            decoration: BoxDecoration(

                            ),
                            margin: EdgeInsets.all(5.0),
                            height: 200,
                            width: 200,
                            child: Card(
                              color: Color(0x00000000),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[
                                    Image.network(list==null?"http://openweathermap.org/img/wn/10d@2x.png":"http://openweathermap.org/img/wn/"+list[39].weather[0].iconstr+"@2x.png"
                                    ),
                                    Text(
                                      list == null ? "loading" : list[39].main.temp
                                          .toString()+"\u00B0",style: TextStyle(color: Colors.white),),
                                    Text(list == null ? "loading" : list[39]
                                        .weather[0].descriptionstr, style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic
                                    ), ),
                                    Text(
                                      list == null ? "loading" : formatter.format(
                                          list[39].dtTxt).toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),

                            ),

                          ),

                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showToast(String message, BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text(message),
      action: SnackBarAction(
          label: 'close', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}

