import 'package:flutter/material.dart';
import '../../text_styles_colors/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: MyTextStyles.medium_1,
          ),
          centerTitle: true,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 3, color: Colors.white38)),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return Text("Home");
        }, separatorBuilder: (context, index) {
          return  Divider(color: Colors.blueGrey,thickness: 3,);
        }, itemCount: 10,),
      ),
    );
  }
}
