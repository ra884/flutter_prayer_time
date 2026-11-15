import 'package:flutter/foundation.dart';
import 'package:flutter_prayer_time/Models/prayer_model.dart';
import 'package:flutter_prayer_time/Services/prayer_service.dart';

class PrayerProvider extends ChangeNotifier {
  PrayerModel? prayerTimes;
  Future<void> requestPrayers() async {
    prayerTimes = await PrayerService.getPrayers();
    notifyListeners();
  }
}
