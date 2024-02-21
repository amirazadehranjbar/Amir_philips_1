import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../gen/assets.gen.dart';
import '../../text_styles_colors/my_colors.dart';
import '../../text_styles_colors/text_styles.dart';

class SimulatorPage extends StatelessWidget {
  const SimulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [

            ///***************  1 ) First Select Environment Text *************************************************///
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NeonContainer(
                    spreadColor: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(100),
                    lightBlurRadius: 20,
                    lightSpreadRadius: 20,
                    borderColor: Colors.green.shade100,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("First Select Environment"),
                    )
                ),
              ],
            )

          ],),
        ),
      ),
    );
  }
}
