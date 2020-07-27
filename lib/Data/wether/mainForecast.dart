// To parse this JSON data, do
//
//     final forecast = forecastFromJson(jsonString);

import 'dart:convert';

Forecast forecastFromJson(String str) => Forecast.fromJson(json.decode(str));

String forecastToJson(Forecast data) => json.encode(data.toJson());

class Forecast {
  Forecast({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  String cod;
  int message;
  int cnt;
  List<ListElement> list;
  City city;

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
    cod: json["cod"],
    message: json["message"],
    cnt: json["cnt"],
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
    city: City.fromJson(json["city"]),
  );

  Map<String, dynamic> toJson() => {
    "cod": cod,
    "message": message,
    "cnt": cnt,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
    "city": city.toJson(),
  };
}

class City {
  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  int id;
  String name;
  Coord coord;
  String country;
  int population;
  int timezone;
  int sunrise;
  int sunset;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
    coord: Coord.fromJson(json["coord"]),
    country: json["country"],
    population: json["population"],
    timezone: json["timezone"],
    sunrise: json["sunrise"],
    sunset: json["sunset"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "coord": coord.toJson(),
    "country": country,
    "population": population,
    "timezone": timezone,
    "sunrise": sunrise,
    "sunset": sunset,
  };
}

class Coord {
  Coord({
    this.lat,
    this.lon,
  });

  double lat;
  double lon;

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}

class ListElement {
  ListElement({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dtTxt,
  });

  int dt;
  MainClass main;
  List<Weather> weather;
  Clouds clouds;
  Wind wind;
  int visibility;
  int pop;
  Sys sys;
  DateTime dtTxt;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    dt: json["dt"],
    main: MainClass.fromJson(json["main"]),
    weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
    clouds: Clouds.fromJson(json["clouds"]),
    wind: Wind.fromJson(json["wind"]),
    visibility: json["visibility"],
    pop: json["pop"],
    sys: Sys.fromJson(json["sys"]),
    dtTxt: DateTime.parse(json["dt_txt"]),
  );

  Map<String, dynamic> toJson() => {
    "dt": dt,
    "main": main.toJson(),
    "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
    "clouds": clouds.toJson(),
    "wind": wind.toJson(),
    "visibility": visibility,
    "pop": pop,
    "sys": sys.toJson(),
    "dt_txt": dtTxt.toIso8601String(),
  };
}

class Clouds {
  Clouds({
    this.all,
  });

  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
    all: json["all"],
  );

  Map<String, dynamic> toJson() => {
    "all": all,
  };
}

class MainClass {
  MainClass({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int seaLevel;
  int grndLevel;
  int humidity;
  double tempKf;

  factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
    temp: json["temp"].toDouble(),
    feelsLike: json["feels_like"].toDouble(),
    tempMin: json["temp_min"].toDouble(),
    tempMax: json["temp_max"].toDouble(),
    pressure: json["pressure"],
    seaLevel: json["sea_level"],
    grndLevel: json["grnd_level"],
    humidity: json["humidity"],
    tempKf: json["temp_kf"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "temp": temp,
    "feels_like": feelsLike,
    "temp_min": tempMin,
    "temp_max": tempMax,
    "pressure": pressure,
    "sea_level": seaLevel,
    "grnd_level": grndLevel,
    "humidity": humidity,
    "temp_kf": tempKf,
  };
}

class Sys {
  Sys({
    this.pod,
  });

  Pod pod;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
    pod: podValues.map[json["pod"]],
  );

  Map<String, dynamic> toJson() => {
    "pod": podValues.reverse[pod],
  };
}

enum Pod { D, N }

final podValues = EnumValues({
  "d": Pod.D,
  "n": Pod.N
});

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
    this.descriptionstr,
    this.iconstr
  });

  int id;
  MainEnum main;
  Description description;
  Iconz icon;
  String iconstr;
  String descriptionstr;




  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    id: json["id"],
    main: mainEnumValues.map[json["main"]],
    description: descriptionValues.map[json["description"]],
    icon: iconValues.map[json["icon"]],
      descriptionstr:json["description"],
    iconstr: json["icon"]

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "main": mainEnumValues.reverse[main],
    "description": descriptionValues.reverse[description],
    "icon": iconValues.reverse[icon],
  };
}

enum Description { CLEAR_SKY, SCATTERED_CLOUDS, BROKEN_CLOUDS, OVERCAST_CLOUDS, FEW_CLOUDS }

final descriptionValues = EnumValues({
  "broken clouds": Description.BROKEN_CLOUDS,
  "clear sky": Description.CLEAR_SKY,
  "few clouds": Description.FEW_CLOUDS,
  "overcast clouds": Description.OVERCAST_CLOUDS,
  "scattered clouds": Description.SCATTERED_CLOUDS
});

enum Iconz { THE_01_D, THE_01_N, THE_03_N, THE_04_D, THE_04_N, THE_02_N }

final iconValues = EnumValues({
  "01d": Iconz.THE_01_D,
  "01n": Iconz.THE_01_N,
  "02n": Iconz.THE_02_N,
  "03n": Iconz.THE_03_N,
  "04d": Iconz.THE_04_D,
  "04n": Iconz.THE_04_N
});

 String getEnumIcon(iconValues) {

 }

enum MainEnum { CLEAR, CLOUDS }

final mainEnumValues = EnumValues({
  "Clear": MainEnum.CLEAR,
  "Clouds": MainEnum.CLOUDS
});

class Wind {
  Wind({
    this.speed,
    this.deg,
  });

  double speed;
  int deg;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
    speed: json["speed"].toDouble(),
    deg: json["deg"],
  );

  Map<String, dynamic> toJson() => {
    "speed": speed,
    "deg": deg,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
