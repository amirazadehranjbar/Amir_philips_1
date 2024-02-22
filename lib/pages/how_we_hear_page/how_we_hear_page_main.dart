// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class HowWeHearPageMain extends StatefulWidget {
//   @override
//   _HowWeHearPageMainState createState() => _HowWeHearPageMainState();
// }
//
// class _HowWeHearPageMainState extends State<HowWeHearPageMain> {
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);
//
//   @override
//   Widget build(BuildContext context) {
//     final pages = List.generate(
//         6,
//             (index) => Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: Colors.grey.shade300,
//           ),
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//           child: Container(
//             height: 280,
//             child: Center(
//                 child: Text(
//                   "Page $index",
//                   style: TextStyle(color: Colors.indigo),
//                 )),
//           ),
//         ));
//
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(height: 16),
//               SizedBox(
//                 height: 240,
//                 child: PageView.builder(
//                   controller: controller,
//                   // itemCount: pages.length,
//                   itemBuilder: (_, index) {
//                     return pages[index % pages.length];
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 24, bottom: 12),
//                 child: Text(
//                   'Worm',
//                   style: TextStyle(color: Colors.black54),
//                 ),
//               ),
//               SmoothPageIndicator(
//                 controller: controller,
//                 count: pages.length,
//                 effect: const WormEffect(
//                   dotHeight: 16,
//                   dotWidth: 16,
//                   type: WormType.thinUnderground,
//                 ),
//               ),
//               //
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 16, bottom: 8),
//               //   child: Text(
//               //     'Jumping Dot',
//               //     style: TextStyle(color: Colors.black54),
//               //   ),
//               // ),
//               // Container(
//               //   child: SmoothPageIndicator(
//               //     controller: controller,
//               //     count: pages.length,
//               //     effect: JumpingDotEffect(
//               //       dotHeight: 16,
//               //       dotWidth: 16,
//               //       jumpScale: .7,
//               //       verticalOffset: 15,
//               //     ),
//               //   ),
//               // ),
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 16, bottom: 12),
//               //   child: Text(
//               //     'Scrolling Dots',
//               //     style: TextStyle(color: Colors.black54),
//               //   ),
//               // ),
//               // SmoothPageIndicator(
//               //     controller: controller,
//               //     count: pages.length,
//               //     effect: ScrollingDotsEffect(
//               //       activeStrokeWidth: 2.6,
//               //       activeDotScale: 1.3,
//               //       maxVisibleDots: 5,
//               //       radius: 8,
//               //       spacing: 10,
//               //       dotHeight: 12,
//               //       dotWidth: 12,
//               //     )),
//               // Padding(
//               //   padding: const EdgeInsets.only(top: 16, bottom: 16),
//               //   child: Text(
//               //     'Customizable Effect',
//               //     style: TextStyle(color: Colors.black54),
//               //   ),
//               // ),
//               // Container(
//               //   // color: Colors.red.withOpacity(.4),
//               //   child: SmoothPageIndicator(
//               //     controller: controller,
//               //     count: pages.length,
//               //     effect: CustomizableEffect(
//               //       activeDotDecoration: DotDecoration(
//               //         width: 32,
//               //         height: 12,
//               //         color: Colors.indigo,
//               //         rotationAngle: 180,
//               //         verticalOffset: -10,
//               //         borderRadius: BorderRadius.circular(24),
//               //         // dotBorder: DotBorder(
//               //         //   padding: 2,
//               //         //   width: 2,
//               //         //   color: Colors.indigo,
//               //         // ),
//               //       ),
//               //       dotDecoration: DotDecoration(
//               //         width: 24,
//               //         height: 12,
//               //         color: Colors.grey,
//               //         // dotBorder: DotBorder(
//               //         //   padding: 2,
//               //         //   width: 2,
//               //         //   color: Colors.grey,
//               //         // ),
//               //         // borderRadius: BorderRadius.only(
//               //         //     topLeft: Radius.circular(2),
//               //         //     topRight: Radius.circular(16),
//               //         //     bottomLeft: Radius.circular(16),
//               //         //     bottomRight: Radius.circular(2)),
//               //         borderRadius: BorderRadius.circular(16),
//               //         verticalOffset: 0,
//               //       ),
//               //       spacing: 6.0,
//               //       // activeColorOverride: (i) => colors[i],
//               //       inActiveColorOverride: (i) => colors[i],
//               //     ),
//               //   ),
//               // ),
//               // const SizedBox(height: 32.0),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// final colors = const [
//   Colors.red,
//   Colors.green,
//   Colors.greenAccent,
//   Colors.amberAccent,
//   Colors.blue,
//   Colors.amber,
// ];

import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:philips_1/gen/assets.gen.dart';
import 'package:philips_1/text_styles_colors/text_styles.dart';

class HowWeHearPageMain extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2e282a),
      alignment: Alignment.topCenter,
      child: SimpleFoldingCell.create(
        key: _foldingCellKey,
        frontWidget: _buildFrontWidget(),
        innerWidget: _buildInnerWidget(),
        cellSize: Size(MediaQuery.of(context).size.width, 140),
        padding: EdgeInsets.all(15),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 10,
        onOpen: () => print('cell opened'),
        onClose: () => print('cell closed'),
      ),
    );
  }

  ///*************************** Out Side Card *********************************************
  Widget _buildFrontWidget() {
    return Container(
      color: Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "OPEN",
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(80, 40),
              ),
            ),
          )
        ],
      ),
    );
  }

  ///************************** In Side Card ********************************************
  Widget _buildInnerWidget() {
    return Container(
      color: Color(0xFFecf2f9),
      padding: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              Assets.images.hearingAid.oticon2.path,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Oticon Hearing Aid ",style: MyTextStyles.mediumDark_1,),

          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "Close",
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(80, 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
