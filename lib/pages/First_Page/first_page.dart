import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white70, width: 4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: Text("Change Theme")),


        ],
      ),
    ),
    Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white70, width: 4)),
      child: const Text('2'),
    ),
    Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white70, width: 4)),
      child: const Text('3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flexible(
        child: CardSwiper(
          cardsCount: cards.length,
          duration: const Duration(seconds: 2),
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
              cards[index],
        ),
      ),
    );
  }
}
