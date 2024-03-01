import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:philips_1/gen/assets.gen.dart';
import 'package:philips_1/pages/hearing_disorders/disorder_list.dart';
import 'package:philips_1/pages/hearing_disorders/disorder_model.dart';
import 'package:philips_1/pages/hearing_disorders/widgets/hearing_disorder_widget.dart';

import '../../text_styles_colors/text_styles.dart';

class HearingDisordersPage extends StatelessWidget {
  const HearingDisordersPage({super.key});

  final String lorem =
      """An Image widget is used to display images in your Flutter app. But, often you would like to have:

More functionality like zooming images, resizing images, caching images, manipulating images, adding effects to images, etc., or
Support for other image formats like SVG apart from the popularly supported JPG, PNG, GIF, WEBP and other image formats.
The complete list of Flutter packages that can help you add the above mentioned functionalities is provided below.

""";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        backgroundColor: const Color.fromARGB(80, 80, 80, 80),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HearingDisorderWidget(lorem: lorem, myWidth: 40),
              HearingDisorderWidget(lorem: lorem, myWidth: 40),

            ],
          ),
        ),
      ),
    );
  }
}
