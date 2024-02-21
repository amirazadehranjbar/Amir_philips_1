import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philips_1/my_firebase_options.dart';
import 'package:philips_1/pages/home_page/home_page.dart';
import 'package:philips_1/pages/select_action_page/select_action_page.dart';
import 'package:philips_1/pages/select_langauge/select_langauge_page.dart';
import 'package:philips_1/pages/simulator_page/simulator_page.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
      home: SelectLanguagePage(),
      getPages: [
        GetPage(name: '/', page: () => SelectLanguagePage()),
        GetPage(
            name: '/SelectActionPage',
            page: () => SelectActionPage(),
            transition: Transition.fadeIn,
            curve: Easing.emphasizedAccelerate,
            transitionDuration: const Duration(seconds: 2)),
        GetPage(
            name: '/SimulatorPage',
            page: () => SimulatorPage(),
            transition: Transition.fadeIn,
            curve: Easing.emphasizedAccelerate,
            transitionDuration: const Duration(seconds: 2)),
        // GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}
