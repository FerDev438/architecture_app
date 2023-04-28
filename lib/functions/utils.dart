import 'dart:convert';

import 'package:architecture_app/models/data_model.dart';

Map<String, dynamic> fromStringToMap({required String value}) {
  Map<String, dynamic> map = json.decode(value);
  return map;
}

String fromMapToString({required Map<String, dynamic> map}) {
  String jsonString = json.encode(map);
  return jsonString;
}

DataModel fromMaptoDataModel({required Map<String, dynamic> map}) {
  return DataModel(
    activity: map['activity'].toString(),
    type: map['type'].toString(),
    participants: map['participants'] ?? 0,
    price: map['price'].toString(),
    link: map['link'].toString(),
    key: map['key'].toString(),
    accessibility: map['accessibility'].toString(),
  );
}
