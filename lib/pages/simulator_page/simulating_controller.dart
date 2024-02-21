import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:meta/meta_meta.dart';

class SimulatorController extends GetxController {

  RxString Environment = "Ocean".obs;
  RxInt ImageIndex = 0.obs;

  RxBool played = false.obs;
  Rx<Icon> iconPlayed = Rx<Icon>(Icon(CupertinoIcons.stop));



  void handleButtonPress() {
    if (played.value) {
      // If the button is pushed and the state is "play", change to "stop"
      played.toggle(); // Toggles the boolean value
      // Change the icon to stop icon
      iconPlayed.value = Icon(CupertinoIcons.play);
      played.value = false;
      print(played.value);
      print("From Button Press Image Index: $ImageIndex" );
    } else {
      // If the button is pushed and the state is "stop", change to "play"
      played.toggle(); // Toggles the boolean value
      // Change the icon to play icon
      iconPlayed.value = Icon(CupertinoIcons.stop);
      played.value = true;
      print(played.value);
      print("From Button Press Image Index: $ImageIndex" );
    }
  }

}
