// To parse this JSON data, do
//
//     final calanderModel = calanderModelFromMap(jsonString);

import 'dart:convert';

class CalanderModel {
  int? code;
  String? status;
  List<Datum>? data;

  CalanderModel({
    this.code,
    this.status,
    this.data,
  });

  factory CalanderModel.fromJson(String str) => CalanderModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CalanderModel.fromMap(Map<String, dynamic> json) => CalanderModel(
    code: json["code"],
    status: json["status"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "code": code,
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}

class Datum {
  Timings? timings;
  Date? date;
  Meta? meta;

  Datum({
    this.timings,
    this.date,
    this.meta,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    timings: json["timings"] == null ? null : Timings.fromMap(json["timings"]),
    date: json["date"] == null ? null : Date.fromMap(json["date"]),
    meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
  );

  Map<String, dynamic> toMap() => {
    "timings": timings?.toMap(),
    "date": date?.toMap(),
    "meta": meta?.toMap(),
  };
}

class Date {
  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;

  Date({
    this.readable,
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  factory Date.fromJson(String str) => Date.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Date.fromMap(Map<String, dynamic> json) => Date(
    readable: json["readable"],
    timestamp: json["timestamp"],
    gregorian: json["gregorian"] == null ? null : Gregorian.fromMap(json["gregorian"]),
    hijri: json["hijri"] == null ? null : Hijri.fromMap(json["hijri"]),
  );

  Map<String, dynamic> toMap() => {
    "readable": readable,
    "timestamp": timestamp,
    "gregorian": gregorian?.toMap(),
    "hijri": hijri?.toMap(),
  };
}

class Gregorian {
  String? date;
  String? format;
  String? day;
  GregorianWeekday? weekday;
  GregorianMonth? month;
  String? year;
  Designation? designation;

  Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  factory Gregorian.fromJson(String str) => Gregorian.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Gregorian.fromMap(Map<String, dynamic> json) => Gregorian(
    date: json["date"],
    format: json["format"],
    day: json["day"],
    weekday: json["weekday"] == null ? null : GregorianWeekday.fromMap(json["weekday"]),
    month: json["month"] == null ? null : GregorianMonth.fromMap(json["month"]),
    year: json["year"],
    designation: json["designation"] == null ? null : Designation.fromMap(json["designation"]),
  );

  Map<String, dynamic> toMap() => {
    "date": date,
    "format": format,
    "day": day,
    "weekday": weekday?.toMap(),
    "month": month?.toMap(),
    "year": year,
    "designation": designation?.toMap(),
  };
}

class Designation {
  String? abbreviated;
  String? expanded;

  Designation({
    this.abbreviated,
    this.expanded,
  });

  factory Designation.fromJson(String str) => Designation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Designation.fromMap(Map<String, dynamic> json) => Designation(
    abbreviated: json["abbreviated"],
    expanded: json["expanded"],
  );

  Map<String, dynamic> toMap() => {
    "abbreviated": abbreviated,
    "expanded": expanded,
  };
}

class GregorianMonth {
  int? number;
  String? en;

  GregorianMonth({
    this.number,
    this.en,
  });

  factory GregorianMonth.fromJson(String str) => GregorianMonth.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GregorianMonth.fromMap(Map<String, dynamic> json) => GregorianMonth(
    number: json["number"],
    en: json["en"],
  );

  Map<String, dynamic> toMap() => {
    "number": number,
    "en": en,
  };
}

class GregorianWeekday {
  String? en;

  GregorianWeekday({
    this.en,
  });

  factory GregorianWeekday.fromJson(String str) => GregorianWeekday.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GregorianWeekday.fromMap(Map<String, dynamic> json) => GregorianWeekday(
    en: json["en"],
  );

  Map<String, dynamic> toMap() => {
    "en": en,
  };
}

class Hijri {
  String? date;
  String? format;
  String? day;
  HijriWeekday? weekday;
  HijriMonth? month;
  String? year;
  Designation? designation;
  List<String>? holidays;

  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
  });

  factory Hijri.fromJson(String str) => Hijri.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Hijri.fromMap(Map<String, dynamic> json) => Hijri(
    date: json["date"],
    format: json["format"],
    day: json["day"],
    weekday: json["weekday"] == null ? null : HijriWeekday.fromMap(json["weekday"]),
    month: json["month"] == null ? null : HijriMonth.fromMap(json["month"]),
    year: json["year"],
    designation: json["designation"] == null ? null : Designation.fromMap(json["designation"]),
    holidays: json["holidays"] == null ? [] : List<String>.from(json["holidays"]!.map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "date": date,
    "format": format,
    "day": day,
    "weekday": weekday?.toMap(),
    "month": month?.toMap(),
    "year": year,
    "designation": designation?.toMap(),
    "holidays": holidays == null ? [] : List<dynamic>.from(holidays!.map((x) => x)),
  };
}

class HijriMonth {
  int? number;
  String? en;
  String? ar;

  HijriMonth({
    this.number,
    this.en,
    this.ar,
  });

  factory HijriMonth.fromJson(String str) => HijriMonth.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HijriMonth.fromMap(Map<String, dynamic> json) => HijriMonth(
    number: json["number"],
    en: json["en"],
    ar: json["ar"],
  );

  Map<String, dynamic> toMap() => {
    "number": number,
    "en": en,
    "ar": ar,
  };
}

class HijriWeekday {
  String? en;
  String? ar;

  HijriWeekday({
    this.en,
    this.ar,
  });

  factory HijriWeekday.fromJson(String str) => HijriWeekday.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HijriWeekday.fromMap(Map<String, dynamic> json) => HijriWeekday(
    en: json["en"],
    ar: json["ar"],
  );

  Map<String, dynamic> toMap() => {
    "en": en,
    "ar": ar,
  };
}

class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Map<String, int>? offset;

  Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
    timezone: json["timezone"],
    method: json["method"] == null ? null : Method.fromMap(json["method"]),
    latitudeAdjustmentMethod: json["latitudeAdjustmentMethod"],
    midnightMode: json["midnightMode"],
    school: json["school"],
    offset: Map.from(json["offset"]!).map((k, v) => MapEntry<String, int>(k, v)),
  );

  Map<String, dynamic> toMap() => {
    "latitude": latitude,
    "longitude": longitude,
    "timezone": timezone,
    "method": method?.toMap(),
    "latitudeAdjustmentMethod": latitudeAdjustmentMethod,
    "midnightMode": midnightMode,
    "school": school,
    "offset": Map.from(offset!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({
    this.id,
    this.name,
    this.params,
    this.location,
  });

  factory Method.fromJson(String str) => Method.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Method.fromMap(Map<String, dynamic> json) => Method(
    id: json["id"],
    name: json["name"],
    params: json["params"] == null ? null : Params.fromMap(json["params"]),
    location: json["location"] == null ? null : Location.fromMap(json["location"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "params": params?.toMap(),
    "location": location?.toMap(),
  };
}

class Location {
  double? latitude;
  double? longitude;

  Location({
    this.latitude,
    this.longitude,
  });

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}

class Params {
  int? fajr;
  int? isha;

  Params({
    this.fajr,
    this.isha,
  });

  factory Params.fromJson(String str) => Params.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Params.fromMap(Map<String, dynamic> json) => Params(
    fajr: json["Fajr"],
    isha: json["Isha"],
  );

  Map<String, dynamic> toMap() => {
    "Fajr": fajr,
    "Isha": isha,
  };
}

class Timings {
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;

  Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.imsak,
    this.midnight,
    this.firstthird,
    this.lastthird,
  });

  factory Timings.fromJson(String str) => Timings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Timings.fromMap(Map<String, dynamic> json) => Timings(
    fajr: json["Fajr"],
    sunrise: json["Sunrise"],
    dhuhr: json["Dhuhr"],
    asr: json["Asr"],
    sunset: json["Sunset"],
    maghrib: json["Maghrib"],
    isha: json["Isha"],
    imsak: json["Imsak"],
    midnight: json["Midnight"],
    firstthird: json["Firstthird"],
    lastthird: json["Lastthird"],
  );

  Map<String, dynamic> toMap() => {
    "Fajr": fajr,
    "Sunrise": sunrise,
    "Dhuhr": dhuhr,
    "Asr": asr,
    "Sunset": sunset,
    "Maghrib": maghrib,
    "Isha": isha,
    "Imsak": imsak,
    "Midnight": midnight,
    "Firstthird": firstthird,
    "Lastthird": lastthird,
  };
}
