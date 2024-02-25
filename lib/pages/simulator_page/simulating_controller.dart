import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SimulatorController extends GetxController {

  RxString Environment = "Ocean".obs;
  RxInt ImageIndex = 0.obs;

  RxBool played = false.obs;
  Rx<Icon> iconPlayed = Rx<Icon>(const Icon(CupertinoIcons.play));



  void handleButtonPress() {
    if (played.value) {
      // If the button is pushed and the state is "play", change to "stop"
      played.toggle(); // Toggles the boolean value
      // Change the icon to stop icon
      iconPlayed.value = const Icon(CupertinoIcons.play);
      played.value = false;
      print(played.value);
      print("From Button Press Image Index: $ImageIndex" );
    } else {
      // If the button is pushed and the state is "stop", change to "play"
      played.toggle(); // Toggles the boolean value
      // Change the icon to play icon
      iconPlayed.value = const Icon(CupertinoIcons.stop);
      played.value = true;
      print(played.value);
      print("From Button Press Image Index: $ImageIndex" );
    }
  }

}
