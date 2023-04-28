import 'dart:math';

import 'package:architecture_app/functions/utils.dart';
import 'package:flutter/material.dart';

import '../data/notifiers/manage_notifier.dart';

class DataModel {
  final String activity;
  final String type;
  final int participants;
  final String price;
  final String link;
  final String key;
  final String accessibility;
  DataModel(
      {required this.activity,
      required this.type,
      required this.participants,
      required this.price,
      required this.link,
      required this.key,
      required this.accessibility});

  Future<void> reset() async {
    await setDataNotifier();
  }

  void logData() {
    String current = fromMapToString(map: dataMapCurrent);
    String internal = fromMapToString(map: dataMapInternal);
    String external = fromMapToString(map: dataMapExternal);
    debugPrint('current: $current');
    debugPrint('Internal: $internal');
    debugPrint('External: $external');
  }
}
