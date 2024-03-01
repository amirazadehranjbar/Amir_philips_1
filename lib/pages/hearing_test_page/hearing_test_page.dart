import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:philips_1/text_styles_colors/my_colors.dart';
import 'package:sizer/sizer.dart';
import '../../gen/assets.gen.dart';
import '../../text_styles_colors/text_styles.dart';
import 'hearing_test_list.dart';

class HearingTestPage extends StatelessWidget {
  const HearingTestPage({Key? key});

  @override
  Widget build(BuildContext context) {

    /// Create List For Smooth Page Indicator *****************************************
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hearing Test Page",
          style: MyTextStyles.large_1,
        ),
        centerTitle: true,
        backgroundColor: MyColors.philips_blue,
      ),
      drawer: Drawer(
        // Add your drawer content here
        backgroundColor: Colors.blueGrey,
        elevation: 50,
        width:  Adaptive.w(60),
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12,
                  border: Border.all(color: Colors.blue)),
              child: Image.asset(Assets.images.logo.philipsShield.path),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Get.back();
                  Get.toNamed("SelectActionPage");
                },
              ),
              title: const Text("Home 🏡"),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {},
              ),
              title: const Text("About 🕵️"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListBuilderImages(),
              ],
            ),
            SizedBox(
              height:  Adaptive.h(6),
            ),

            //******************************************************************

            //******************************************************************

          ],
        ),
      ),
    );
  }
}

///**************** List Builder for Images ***********************
class ListBuilderImages extends StatelessWidget {
  const ListBuilderImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:  Adaptive.h(90),
        width:  Adaptive.w(40),
        child: ListView.builder(
          itemCount: hearingTests.length,
          padding: EdgeInsets.all(4.dp),
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.start,
          clipBehavior: Clip.antiAlias,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
              height:  Adaptive.h(60),
              width:  Adaptive.w(40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black54,
                  border: Border.all(color: Colors.white12, width: 4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //******** Images *************
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        hearingTests[index].imagePath,
                        height:  Adaptive.h(20),
                        width:  Adaptive.w(20),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Divider(
                      color: MyColors.philips_yellow,
                      thickness: 3,
                      indent: 6,
                      endIndent: 6,
                    ),
                    //******* Test Name ***********
                    Text(
                      hearingTests[index].name,
                      style: MyTextStyles.small_0,
                    ),
                    SizedBox(
                      height:  Adaptive.h(4),
                    ),
                    //******* Description *********
                    Text(hearingTests[index].description,
                        style: MyTextStyles.small_0),
                    SizedBox(height:  Adaptive.h(4)),
                    //***** Button For See More *******
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("See More", style: MyTextStyles.small_0)),
                    SizedBox(height:  Adaptive.h(10)),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

//***************************************************************
