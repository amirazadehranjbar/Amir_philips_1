import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:philips_1/gen/assets.gen.dart';

class HearingDisordersPage extends StatelessWidget {
   const HearingDisordersPage({super.key});

  final String lorem = """An Image widget is used to display images in your Flutter app. But, often you would like to have:

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
              HearingDisorderWidget(lorem: lorem,myWidth: 40),
              HearingDisorderWidget(lorem: lorem,myWidth: 40),

            ],
          ),
        ),
      ),
    );
  }
}

class HearingDisorderWidget extends StatelessWidget {
  final int myWidth;
  const HearingDisorderWidget({
    super.key,
    required this.lorem,
    required this.myWidth,
  });

  final String lorem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Adaptive.w(myWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FullScreenWidget(
            disposeLevel: DisposeLevel.Medium,
            child: SafeArea(
              child: Card(
                elevation: 4,
                child: Container(
                  height: Adaptive.h(90),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "customWidget",
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            Assets.images.hearingTest.hearingTest3.path,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:  Adaptive.h(4),
                      ),
                      const Text('Lorem text',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height:  Adaptive.h(4),
                      ),
                      Expanded(
                        child: Text(
                          lorem,overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 33, 42, 87),
            thickness: 5,
          ),
          FullScreenWidget(
            disposeLevel: DisposeLevel.Medium,
            child: SafeArea(
              child: Card(
                elevation: 4,
                child: Container(
                  height: Adaptive.h(90),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "customWidget",
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            Assets.images.hearingTest.hearingTest3.path,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:  Adaptive.h(4),
                      ),
                      const Text('Lorem text',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height:  Adaptive.h(4),
                      ),
                      Expanded(
                        child: Text(
                          lorem,overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 33, 42, 87),
            thickness: 5,
          ),
          FullScreenWidget(
        disposeLevel: DisposeLevel.Medium,
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: Adaptive.h(90),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "customWidget",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        Assets.images.hearingTest.hearingTest3.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                   SizedBox(
                    height:  Adaptive.h(4),
                  ),
                  const Text('Lorem text',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(
                    height:  Adaptive.h(4),
                  ),
                  Expanded(
                    child: Text(
                      lorem,overflow: TextOverflow.ellipsis,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}
