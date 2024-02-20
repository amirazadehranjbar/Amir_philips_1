import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philips_1/pages/First_Page/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home:  FirstPage(),
    );
  }
}


