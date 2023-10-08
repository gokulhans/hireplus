import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWithBack extends StatelessWidget {
  final String title;
  const AppBarWithBack({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
