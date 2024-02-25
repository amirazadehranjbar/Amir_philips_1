import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:philips_1/text_styles_colors/text_styles.dart';
import 'package:sizer/sizer.dart';

import '../../gen/assets.gen.dart';
import '../../models/hearing_test_model.dart';
import 'detail_list.dart';

class ListOfHearingTestComponent extends StatelessWidget {
  HearingTestModel model;

  ListOfHearingTestComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white12,
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60.h,
          width: 90.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///******* Image ***************
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    model.imagePath,
                    height: 100.sp,
                    width: 250.sp,
                    fit: BoxFit.cover,
                  )),

              ///******* Name  ***************
              Text(
                model.name,
                style: MyTextStyles.medium_1,
              ),

              ///*******   ***************

              ///******* Description Price***************
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          //**** Summary Description ********
                          Text(
                            model.description,
                            style: MyTextStyles.small_1,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //**** Price ******************
                          Text(
                            model.price,
                            style: MyTextStyles.medium_1,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                int index = model.index;

                                // Ensure the index is within the range of DetailsList
                                if (index >= 0 && index < DetailsList.length) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Details"),
                                        content: DetailsList[index],
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Close'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  print("Invalid index: $index");
                                }
                              },

                              child: Text(
                                "See Details",
                                style: MyTextStyles.medium_1,
                              ))
                        ],
                      ),
                    )

                    //**** See More Details Button ****************
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
