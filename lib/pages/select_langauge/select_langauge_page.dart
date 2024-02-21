import 'package:flutter/material.dart';
import 'package:philips_1/text_styles_colors/my_colors.dart';
import 'package:philips_1/text_styles_colors/text_styles.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
        backgroundColor: MyColors.philips_blue,
      ),
      backgroundColor: MyColors.philips_blue,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),

            ///*******************    English Text Select Language   ***********************************************************////
            Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColors.philips_yellow, width: 2),
                ),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                child: Text(
                  "Please Select Your Preferred Language",
                  style: MyTextStyles.medium_1,
                )),
            SizedBox(
              height: size.height * 0.1,
            ),

            ///*******************    Arabic Text Select Language ***********************************************************////
            Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColors.philips_yellow, width: 2),
                ),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                child: Text(
                  "الرجاء تحديد لغتك المفضلة",
                  style: MyTextStyles.medium_1,
                )),
            SizedBox(
              height: size.height * 0.1,
            ),

            ///*******************    Button for Select Language ***********************************************************////
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///****** Button English ************************************************///
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.black45),elevation: MaterialStatePropertyAll(20),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(30))),
                  child: Text(
                    "English",
                    style: MyTextStyles.medium_1,
                  ),
                ),
                ///****** Button Arabic ************************************************///
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.black45),elevation: MaterialStatePropertyAll(20),
                      padding: MaterialStatePropertyAll(EdgeInsets.all(30))),
                  child: Text(
                    "عربي",
                    style: MyTextStyles.medium_1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
