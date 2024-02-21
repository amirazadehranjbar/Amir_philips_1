import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../text_styles_colors/my_colors.dart';
import '../../text_styles_colors/text_styles.dart';

class SelectActionPage extends StatelessWidget {
  const SelectActionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      ///******************** App Bar ***************************************************************************///
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: MyTextStyles.large_1,
        ),
        centerTitle: true,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.philips_yellow, width: 3),
            borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.black45,
        toolbarHeight: size.height * 0.1,
        elevation: 30,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 60, 8),
            child: Image.asset(
              Assets.images.logo.philipsShield.path,
              height: size.height * 0.1,
            ),
          )
        ],
      ),
      backgroundColor: MyColors.philips_blue,

      ///******************** Body    ***************************************************************************///
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///*************** How We Hear InkWell **********************************************************///
                InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black45,
                        border:
                            Border.all(color: MyColors.philips_yellow, width: 3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ////*********** HowWeHear Text ***************///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Text("How We Hear", style: MyTextStyles.medium_1),
                        ),

                        ////*********** HowWeHear Image ***************///
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              Assets.images.selectActionPageImages.howWeHear.path,
                              height: size.height * 0.1,
                              fit: BoxFit.fill,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
