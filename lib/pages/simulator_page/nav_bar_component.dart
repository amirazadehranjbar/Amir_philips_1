import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class MyNavBarBottom extends StatelessWidget {
  const MyNavBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(20),
      child:  GNav(color: Colors.blueGrey,
        backgroundColor: Colors.black12,
        activeColor: Colors.deepPurple,
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.white38,width: 3),
        tabBackgroundColor: Colors.black54,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        padding: EdgeInsets.all(Adaptive.h(4)),
        onTabChange: (value) {
          if(value==0){

          }else if(value==1){

          }
        },
        tabs: const [
          GButton(icon:Icons.hearing,text: "Shope",),
          GButton(icon: Icons.shopping_bag,text: "Card",)
        ],),
    );
  }
}
