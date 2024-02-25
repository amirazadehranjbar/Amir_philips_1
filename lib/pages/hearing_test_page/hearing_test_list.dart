import '../../gen/assets.gen.dart';
import '../../models/hearing_test_model.dart';

List<HearingTestModel> hearingTests = [
  HearingTestModel(
    index: 0,
    name: "Test 1",
    description: "Description for Test 1",
    price: "25.00 USD",
    imagePath: Assets.images.hearingTest.hearingTest1.path,
  ),
  HearingTestModel(
    index: 1,
    name: "Test 2",
    description: "Description for Test 2",
    price: "30.00 USD",
    imagePath: Assets.images.hearingTest.hearingTest2.path,
  ),
  HearingTestModel(
    index: 2,
    name: "Test 3",
    description: "Description for Test 3",
    price: "35.00 USD",
    imagePath: Assets.images.hearingTest.hearingTest3.path,
  ),

  HearingTestModel(
    index: 3,
    name: "Test 4",
    description: "Description for Test 4",
    price: "89.00 USD",
    imagePath: Assets.images.hearingTest.hearingTest4.path,
  ),
  // Add more instances as needed
];