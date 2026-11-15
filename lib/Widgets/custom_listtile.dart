import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  String name;
  String time;
  CustomListtile({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: const Color.fromARGB(255, 234, 211, 238),
        leading: CircleAvatar(
          child: Icon(
            Icons.mosque,
            color: const Color.fromARGB(255, 87, 28, 98),
          ),
          backgroundColor: const Color.fromARGB(255, 177, 125, 186),
        ),
        title: Text(name),
        trailing: Text(time),
      ),
    );
  }
}
