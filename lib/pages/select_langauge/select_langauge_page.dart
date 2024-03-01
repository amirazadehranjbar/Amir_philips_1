import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:philips_1/gen/assets.gen.dart';
import 'package:philips_1/pages/select_action_page/select_action_page.dart';
import 'package:philips_1/text_styles_colors/my_colors.dart';
import 'package:philips_1/text_styles_colors/text_styles.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        ///*******************    App Bar   ***********************************************************////
        appBar: AppBar(
          title: Text(
            "Select Langauge Page",
            style: MyTextStyles.large_1,
          ),
          centerTitle: true,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.philips_yellow, width: 3),
              borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.black45,
          toolbarHeight: Adaptive.h(10),
          elevation: 30,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 60, 8),
              child: Image.asset(
                Assets.images.logo.philipsShield.path,
                height: Adaptive.h(10),
              ),
            )
          ],
        ),
        backgroundColor: MyColors.philips_blue,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Adaptive.h(10),
              ),

              ///*******************    English Text Select Language   ***********************************************************////
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: MyColors.philips_yellow, width: 2),
                  ),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "Please Select Your Preferred Language",
                    style: MyTextStyles.medium_1,
                  )),
              SizedBox(
                height: Adaptive.h(10),
              ),

              ///*******************    Arabic Text Select Language ***********************************************************////
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: MyColors.philips_yellow, width: 2),
                  ),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "الرجاء تحديد لغتك المفضلة",
                    style: MyTextStyles.medium_1,
                  )),
              SizedBox(
                height: Adaptive.h(10),
              ),

              ///*******************    Button for Select Language ***********************************************************////
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///****** Button English ************************************************///
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("SelectActionPage");
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black45),
                        elevation: const MaterialStatePropertyAll(20),
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(30)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3, color: MyColors.philips_yellow),
                            borderRadius: BorderRadius.circular(20)))),
                    child: Text(
                      "English",
                      style: MyTextStyles.medium_1,
                    ),
                  ),

                  ///****** Button Arabic ************************************************///
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                        const MaterialStatePropertyAll(Colors.black45),
                        elevation: const MaterialStatePropertyAll(20),
                        padding:
                        const MaterialStatePropertyAll(EdgeInsets.all(30)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3, color: MyColors.philips_yellow),
                            borderRadius: BorderRadius.circular(20)))),
                    child: Text(
                      "Arabic",
                      style: MyTextStyles.medium_1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
