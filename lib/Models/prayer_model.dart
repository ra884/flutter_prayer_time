import 'package:flutter/material.dart';

class PrayerModel {
  Map<String, dynamic> prayerModel;
  PrayerModel({required this.prayerModel});
  factory PrayerModel.fromJson(Map<String, dynamic> json) {
    return PrayerModel(prayerModel: json["data"]["timings"]);
  }
}
