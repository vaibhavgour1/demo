// class TaskModel {
//   String imageUrl;
//   String buttonText;
//   String dayText;
//   String mrp;
//   String titie;
//   TaskModel(
//       {required this.imageUrl,
//       required this.buttonText,
//       required this.dayText,
//       required this.mrp,
//       required this.titie});
// }
// To parse this JSON data, do
//
//     final testResponse = testResponseFromMap(jsonString);

import 'dart:convert';

class TestResponse {
  TestResponse({
     this.currentBookings,
    required this.packages,
  });

  CurrentBookings? currentBookings;
  List<Package> packages;

  factory TestResponse.fromJson(String str) => TestResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TestResponse.fromMap(Map<String, dynamic> json) => TestResponse(
    currentBookings:CurrentBookings.fromMap(json["current_bookings"]),
    packages: json["packages"] == null ? [] : List<Package>.from(json["packages"].map((x) => Package.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "current_bookings": currentBookings == null ? null : currentBookings!.toMap(),
    "packages": packages == null ? null : List<dynamic>.from(packages.map((x) => x.toMap())),
  };
}

class CurrentBookings {
  CurrentBookings({
    required this.packageLabel,
    required this.fromDate,
    required this.fromTime,
    required this.toDate,
    required this.toTime,
  });

  String packageLabel;
  String fromDate;
  String fromTime;
  String toDate;
  String toTime;

  factory CurrentBookings.fromJson(String str) => CurrentBookings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CurrentBookings.fromMap(Map<String, dynamic> json) => CurrentBookings(
    packageLabel: json["package_label"] == null ? "" : json["package_label"].toString(),
    fromDate: json["from_date"] == null ? "" : json["from_date"].toString(),
    fromTime: json["from_time"] == null ? "" : json["from_time"].toString(),
    toDate: json["to_date"] == null ? "" : json["to_date"].toString(),
    toTime: json["to_time"] == null ? "" : json["to_time"].toString(),
  );

  Map<String, dynamic> toMap() => {
    "package_label": packageLabel == null ? null : packageLabel,
    "from_date": fromDate == null ? null : fromDate,
    "from_time": fromTime == null ? null : fromTime,
    "to_date": toDate == null ? null : toDate,
    "to_time": toTime == null ? null : toTime,
  };
}

class Package {
  Package({
    required this.id,
    required this.packageName,
    required this.price,
    required this.description,
  });

  int id;
  String packageName;
  int price;
  String description;

  factory Package.fromJson(String str) => Package.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Package.fromMap(Map<String, dynamic> json) => Package(
    id: json["id"] == null ? null : json["id"],
    packageName: json["package_name"] == null ? null : json["package_name"],
    price: json["price"] == null ? null : json["price"],
    description: json["description"] == null ? null : json["description"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "package_name": packageName == null ? null : packageName,
    "price": price == null ? null : price,
    "description": description == null ? null : description,
  };
}
