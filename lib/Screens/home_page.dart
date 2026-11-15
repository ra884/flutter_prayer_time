import 'package:flutter/material.dart';
import 'package:flutter_prayer_time/Providers/prayer_provider.dart';
import 'package:flutter_prayer_time/Widgets/custom_listtile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 74, 135),
        title: Text(
          "Prayer Times",
          style: TextStyle(
            fontWeight: .bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<PrayerProvider>(
        builder: (context, value, child) {
          final data = value.prayerTimes?.prayerModel;
          if (data == null) {
            value.requestPrayers();
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: Container(
                width: 600,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return CustomListtile(
                      name: data.keys.elementAt(index),
                      time: data.values.elementAt(index),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
