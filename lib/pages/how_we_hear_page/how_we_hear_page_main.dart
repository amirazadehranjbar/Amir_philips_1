import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:philips_1/gen/assets.gen.dart';
import 'package:philips_1/text_styles_colors/my_colors.dart';
import 'package:philips_1/text_styles_colors/text_styles.dart';
import 'package:sizer/sizer.dart';


class HowWeHearPageMain extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      color: Colors.blue,
      height: 20.h,
      width: 10.w,
      child: const Text('1'),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
      height: 100,
      width: 100,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
      height: 100,
      width: 100,
    )
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38,
        appBar: AppBar(
          title: Text(
            "How We Hear Page",
            style: MyTextStyles.largeDark_1,
          ),
          backgroundColor: MyColors.philips_yellow,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(width: 3.sp, color: MyColors.philips_blue),
          ),
          centerTitle: true,
          toolbarHeight: 8.h,
          leading: Padding(
            padding: EdgeInsets.all(2.sp),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Image.asset(
                Assets.images.icons.home.path,
                height: 8.h,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            ///*******************  Simple Folding Cell ****************************************************************
            Container(
              alignment: Alignment.topCenter,
              child: SimpleFoldingCell.create(
                key: _foldingCellKey,
                frontWidget: _buildFrontWidget(),
                innerWidget: _buildInnerWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: EdgeInsets.all(10.sp),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 10,
                onOpen: () => print('cell opened'),
                onClose: () => print('cell closed'),
              ),
            ),

            ///****************** card_stack_widget ********************************************************************
            Flexible(
                    child: CardSwiper(
                      cardsCount: cards.length,
                      cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
                    ),
                  ),

          ],
        ),
      ),
    );
  }

  ///*************************** Out Side Simple Folding Cell *********************************************
  Widget _buildFrontWidget() {
    return Container(
      color: const Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: const Color(0xFF2e282a),
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
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize:  Size(30.sp, 15.sp),
              ),
              child: const Text(
                "OPEN",
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///************************** In Side Simple Folding Cell ********************************************
  Widget _buildInnerWidget() {
    return Container(
      color: const Color(0xFFecf2f9),
      padding:  EdgeInsets.only(top: 6.sp),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: const Color(0xFF2e282a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              Assets.images.hearingAid.oticon2.path,
              width: 20.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Oticon Hearing Aid ",
              style: MyTextStyles.mediumDark_1,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(30.sp, 15.sp),
              ),
              child: const Text(
                "Close",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
