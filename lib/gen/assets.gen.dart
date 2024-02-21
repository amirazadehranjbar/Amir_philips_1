/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
  $AssetsImagesSelectActionPageImagesGen get selectActionPageImages =>
      const $AssetsImagesSelectActionPageImagesGen();
  $AssetsImagesSimulatorPageImageGen get simulatorPageImage =>
      const $AssetsImagesSimulatorPageImageGen();
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/philips_shield.png
  AssetGenImage get philipsShield =>
      const AssetGenImage('assets/images/logo/philips_shield.png');

  /// List of all assets
  List<AssetGenImage> get values => [philipsShield];
}

class $AssetsImagesSelectActionPageImagesGen {
  const $AssetsImagesSelectActionPageImagesGen();

  /// File path: assets/images/select_action_page_images/HearingLost_Simulator.png
  AssetGenImage get hearingLostSimulator => const AssetGenImage(
      'assets/images/select_action_page_images/HearingLost_Simulator.png');

  /// File path: assets/images/select_action_page_images/Hearing_Lost.png
  AssetGenImage get hearingLost => const AssetGenImage(
      'assets/images/select_action_page_images/Hearing_Lost.png');

  /// File path: assets/images/select_action_page_images/Hearing_Tests.png
  AssetGenImage get hearingTests => const AssetGenImage(
      'assets/images/select_action_page_images/Hearing_Tests.png');

  /// File path: assets/images/select_action_page_images/HowWeHear.png
  AssetGenImage get howWeHear => const AssetGenImage(
      'assets/images/select_action_page_images/HowWeHear.png');

  /// File path: assets/images/select_action_page_images/hearing_disorders.png
  AssetGenImage get hearingDisorders => const AssetGenImage(
      'assets/images/select_action_page_images/hearing_disorders.png');

  /// File path: assets/images/select_action_page_images/philips_hearlink.png
  AssetGenImage get philipsHearlink => const AssetGenImage(
      'assets/images/select_action_page_images/philips_hearlink.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        hearingLostSimulator,
        hearingLost,
        hearingTests,
        howWeHear,
        hearingDisorders,
        philipsHearlink
      ];
}

class $AssetsImagesSimulatorPageImageGen {
  const $AssetsImagesSimulatorPageImageGen();

  /// File path: assets/images/simulator_page_image/forest.png
  AssetGenImage get forest =>
      const AssetGenImage('assets/images/simulator_page_image/forest.png');

  /// File path: assets/images/simulator_page_image/ocean_waves.png
  AssetGenImage get oceanWaves =>
      const AssetGenImage('assets/images/simulator_page_image/ocean_waves.png');

  /// File path: assets/images/simulator_page_image/restaurant.png
  AssetGenImage get restaurant =>
      const AssetGenImage('assets/images/simulator_page_image/restaurant.png');

  /// List of all assets
  List<AssetGenImage> get values => [forest, oceanWaves, restaurant];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
