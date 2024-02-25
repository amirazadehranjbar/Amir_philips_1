import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philips_1/pages/how_we_hear_page/how_we_hear_page_main.dart';
import 'package:philips_1/pages/select_action_page/select_action_page.dart';
import 'package:philips_1/pages/select_langauge/select_langauge_page.dart';
import 'package:philips_1/pages/simulator_page/simulator_page.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) =>  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.black54),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.white38, width: 3)))))),
        themeMode: ThemeMode.dark,
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
          GetPage(
              name: '/HowWeHearPageMain',
              page: () => HowWeHearPageMain(),
              transition: Transition.fadeIn,
              curve: Easing.emphasizedAccelerate,
              transitionDuration: const Duration(seconds: 2)),
        ],
      ),
    );
  }
}
