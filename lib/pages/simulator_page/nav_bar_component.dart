
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:philips_1/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class MyNavBarBottom extends StatelessWidget {
  const MyNavBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GNav(color: Colors.blueGrey,
        backgroundColor: Colors.black12,
        activeColor: Colors.deepPurple,
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.white38,width: 3),
        tabBackgroundColor: Colors.black54,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        padding: EdgeInsets.all(1.5.h),
        onTabChange: (value) {
          if(value==0){

          }else if(value==1){

          }
        },
        tabs: const [
          GButton(icon:Icons.hearing,text: "Shope",),
          GButton(icon: Icons.shopping_bag,text: "Card",)
        ],),
    );;
  }
}
