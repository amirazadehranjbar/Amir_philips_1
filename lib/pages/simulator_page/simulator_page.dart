import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../gen/assets.gen.dart';
import '../../text_styles_colors/my_colors.dart';
import '../../text_styles_colors/text_styles.dart';

class SimulatorPage extends StatelessWidget {
  SimulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    ///***************** Environment Image List   ************************************************///
    List<GestureDetector> cards = [
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          print("Ocean");
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),color: MyColors.philips_blue),
          height: size.height * 0.4,
          width: size.width * 0.4,
          child: Image.asset(
            Assets.images.simulatorPageImage.oceanWaves.path,
            height: size.height * 0.4,
            width: size.width * 0.4,
          ),
        ),
      ),
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          print("Forest");
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),color: MyColors.philips_blue),
          height: size.height * 0.4,
          width: size.width * 0.4,
          child: Image.asset(
            Assets.images.simulatorPageImage.forest.path,
            height: size.height * 0.4,
            width: size.width * 0.4,
          ),
        ),
      ),
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          print("Restaurant");
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),color: MyColors.philips_blue),
          height: size.height * 0.4,
          width: size.width * 0.4,
          child: Image.asset(
            Assets.images.simulatorPageImage.restaurant.path,
            height: size.height * 0.4,
            width: size.width * 0.4,
          ),
        ),
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hearing Lost Simulator",
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///***************  Select Environment  *************************************************///
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///*************** Select Environment Text ************************************************
                  NeonContainer(
                      spreadColor: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(100),
                      lightBlurRadius: 20,
                      lightSpreadRadius: 20,
                      borderColor: Colors.green.shade100,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("First Select Environment"),
                      )),
                  ///************** Select Environment Image **************************************************
                  Flexible(
                    child: SizedBox(
                      height: size.height * 0.4,
                      width: size.width * 0.4, // Adjust the height as needed
                      child: CardSwiper(
                        cardsCount: cards.length,
                        duration: const Duration(seconds: 2),
                        cardBuilder: (context, index, percentThresholdX,
                                percentThresholdY) =>
                            cards[index],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              NeonLine(
                spreadColor: Colors.brown,
                lightSpreadRadius: 30,
                lightBlurRadius: 90,
                lineWidth: size.width*0.8,
                lineHeight: 0.3,
                lineColor: Colors.brown.shade100,
              ),
              SizedBox(height: size.height*0.1,),
              ///************** Play Sound ***********************************************************
              NeonContainer(
                  spreadColor: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(100),
                  lightBlurRadius: 20,
                  lightSpreadRadius: 20,
                  borderColor: Colors.green.shade100,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Play the degree of hearing loss"),
                  )),
              SizedBox(height: size.height*0.1),
              ///************** Button for Play Sound ************************************************
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
