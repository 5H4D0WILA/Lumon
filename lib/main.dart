import 'package:anime_streaming/src/ui/themes/global.dart';
import 'package:anime_streaming/src/ui/views/home_view.dart';
import 'package:anime_streaming/src/ui/views/info_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.theme,
      home: HomeView(),
    );
  }
}
