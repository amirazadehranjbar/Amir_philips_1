import 'package:audioplayers/audioplayers.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:get/get.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:philips_1/pages/simulator_page/nav_bar_component.dart';
import 'package:philips_1/pages/simulator_page/simulating_controller.dart';
import 'package:sizer/sizer.dart';
import '../../gen/assets.gen.dart';
import '../../text_styles_colors/my_colors.dart';
import '../../text_styles_colors/text_styles.dart';

class SimulatorPage extends StatelessWidget {
  SimulatorPage({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SimulatorController());

    ///***************** Environment Image List   ************************************************///
    List<GestureDetector> cards = [
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          controller.Environment.value = "Ocean";
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),
              color: MyColors.philips_blue),
          height:  Adaptive.h(50),
          width:  Adaptive.w(50),
          child: FullScreenWidget(
            disposeLevel: DisposeLevel.Medium,
            child: Hero(
              tag: "customTag",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  Assets.images.simulatorPageImage.oceanWaves.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          controller.Environment.value = "Forest";
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),
              color: MyColors.philips_blue),
          height:  Adaptive.h(40),
          width:  Adaptive.w(40),
          child: FullScreenWidget(
            disposeLevel: DisposeLevel.Medium,
            child: Hero(
              tag: "customTag",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  Assets.images.simulatorPageImage.forest.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onDoubleTap: () {
          // Call your function here when the first container is double-tapped
          // For example, you can show a dialog, navigate to another screen, etc.
          controller.Environment.value = "Restaurant";
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white70, width: 4),
              color: MyColors.philips_blue),
          height:  Adaptive.h(20),
          width:  Adaptive.w(20),
          child:  FullScreenWidget(
            disposeLevel: DisposeLevel.Medium,
            child: Hero(
              tag: "customTag",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  Assets.images.simulatorPageImage.restaurant.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
      bottomNavigationBar: MyNavBarBottom(),
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
                      height: Adaptive.h(40),
                      width: Adaptive.w(40),
                      child: CardSwiper(
                        cardsCount: cards.length,
                        onSwipe: (previousIndex, currentIndex, direction) {
                          print(controller.ImageIndex.value);
                          return controller.ImageIndex.value == currentIndex;
                        },
                        duration: const Duration(milliseconds: 200),
                        cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) {
                          Future.delayed(Duration(milliseconds: 200), () {
                            controller.ImageIndex.value = index;
                          },);
                          return cards[index];
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Adaptive.h(4),
              ),
              NeonLine(
                spreadColor: Colors.brown,
                lightSpreadRadius: 30,
                lightBlurRadius: 90,
                lineWidth: Adaptive.w(10),
                lineHeight: 0.3,
                lineColor: Colors.brown.shade100,
              ),
              SizedBox(
                height: Adaptive.h(4),
              ),

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
              SizedBox(height: Adaptive.h(10),),

              ///************** Button for Play Sound ************************************************
              AnimatedButton(
                onPress: () {
                  controller.handleButtonPress();
                  if (controller.played.value==true) {
                    if (controller.ImageIndex.value == 0) {
                      player.play(AssetSource("restaurant.mp3"));
                      print("Restaurant");
                    } else if (controller.ImageIndex.value == 1) {
                      player.play(AssetSource("ocean.wav"));
                      print("Ocean");
                    } else {
                      player.play(AssetSource("forest.wav"));
                      print("Forest");
                    }
                  } else {
                    player.stop();
                  }
                },
                height: Adaptive.h(10),
                width: Adaptive.w(10),
                text: 'Play',
                selectedText: "Stop",
                isReverse: true,
                selectedTextColor: Colors.blueGrey,
                transitionType: TransitionType.LEFT_CENTER_ROUNDER,
                textStyle: MyTextStyles.medium_1,
                backgroundColor: Colors.black45,
                borderColor: Colors.white38,
                borderRadius: 50,
                borderWidth: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
