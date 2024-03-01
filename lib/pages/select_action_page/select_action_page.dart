import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../gen/assets.gen.dart';
import '../../text_styles_colors/my_colors.dart';
import '../../text_styles_colors/text_styles.dart';

class SelectActionPage extends StatelessWidget {
  const SelectActionPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        toolbarHeight:  Adaptive.h(10),
        elevation: 30,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 60, 8),
            child: Image.asset(
              Assets.images.logo.philipsShield.path,
              height:  Adaptive.h(10),
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      backgroundColor: MyColors.philips_blue,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      ///******************** Body    ***************************************************************************///
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //////////////************************ Row 1 for How We Hear __ Hearing Disorders ***********************///
              SizedBox(
                height:  Adaptive.h(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///*************** How We Hear InkWell **********************************************************///
                  //TODO:How We Hear InkWell
                  InkWell(
                    onTap: () {
                      Get.toNamed("HowWeHearPageMain");
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** Hearing Lost Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("How We Hear",
                                style: MyTextStyles.small_1),
                          ),

                          ////*********** Hearing Lost Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages.howWeHear
                                    .path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  ),

                  ///*************** Hearing Disorders InkWell **********************************************************///
                  //TODO:Hearing Disorders InkWell
                  InkWell(
                    onTap: () {
                      Get.toNamed("HearingDisordersPage");
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** HowWeHear Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Hearing Disorders",
                                style: MyTextStyles.small_1),
                          ),

                          ////*********** HowWeHear Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages
                                    .hearingDisorders.path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height:  Adaptive.h(10),
              ),
              //////////////************************ Row 2 for Hearing Lost __ Hearing Test ***********************///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///*************** Hearing Lost InkWell **********************************************************///
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** HowWeHear Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Hearing Lost",
                                style: MyTextStyles.small_1),
                          ),

                          ////*********** HowWeHear Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages.hearingLost
                                    .path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  ),

                  ///*************** Hearing Test InkWell **********************************************************///
                  InkWell(
                    onTap: () {Get.toNamed("HearingTestPage");},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** HowWeHear Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Hearing Test",
                                style: MyTextStyles.small_1),
                          ),

                          ////*********** HowWeHear Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages
                                    .hearingTests.path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height:  Adaptive.h(10),
              ),
              //////////////************************ Row 3 for philips hearlink __ Hearing Lost Simulator  ***********************///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///*************** philips hearlink InkWell **********************************************************///
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** HowWeHear Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Philips Hearlink",
                                style: MyTextStyles.small_1),
                          ),

                          ////*********** Philips Hearlink Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages
                                    .philipsHearlink.path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  ),

                  ///*************** Hearing Lost Simulator InkWell **********************************************************///
                  InkWell(
                    onTap: () {
                      Get.toNamed("SimulatorPage");
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          border: Border.all(
                              color: MyColors.philips_yellow, width: 3)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ////*********** HowWeHear Text ***************///
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Hearing Lost \n Simulator",
                                style: TextStyle(fontFamily: "Dubai" , fontWeight: FontWeight.w200 ,color: Colors.white70,fontSize: 10.dp)),
                          ),

                          ////*********** Hearing Lost Simulator Image ***************///
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                Assets.images.selectActionPageImages
                                    .hearingLostSimulator.path,
                                height:  Adaptive.h(20),
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height:  Adaptive.h(20),
              ),
              /////////////************************* Row 4 for Bottom Sheet ***********************************************///
              ElevatedButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context) {
                  return Container(height:  Adaptive.h(20),decoration: BoxDecoration(color: Colors.black45),) ;
                },);
              }, child: Text("Bottom Sheet", style: MyTextStyles.small_1)),
              SizedBox(height:  Adaptive.h(10),)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/");
        },
        backgroundColor: MyColors.philips_yellow,
        elevation: 70,
        focusColor: Colors.white38,
        child: const Icon(CupertinoIcons.arrow_left_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
