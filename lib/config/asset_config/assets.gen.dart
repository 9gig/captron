/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/featGirl.png
  AssetGenImage get featGirl => const AssetGenImage('assets/png/featGirl.png');

  /// File path: assets/png/girly.png
  AssetGenImage get girly => const AssetGenImage('assets/png/girly.png');

  /// List of all assets
  List<AssetGenImage> get values => [featGirl, girly];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/activity-icon.svg
  SvgGenImage get activityIcon =>
      const SvgGenImage('assets/svg/activity-icon.svg');

  /// File path: assets/svg/apple-icon.svg
  SvgGenImage get appleIcon => const SvgGenImage('assets/svg/apple-icon.svg');

  /// File path: assets/svg/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/svg/camera.svg');

  /// File path: assets/svg/close.svg
  SvgGenImage get close => const SvgGenImage('assets/svg/close.svg');

  /// File path: assets/svg/cloud-2-icon.svg
  SvgGenImage get cloud2Icon =>
      const SvgGenImage('assets/svg/cloud-2-icon.svg');

  /// File path: assets/svg/cloud-icon.svg
  SvgGenImage get cloudIcon => const SvgGenImage('assets/svg/cloud-icon.svg');

  /// File path: assets/svg/drop-arrow.svg
  SvgGenImage get dropArrow => const SvgGenImage('assets/svg/drop-arrow.svg');

  /// File path: assets/svg/google-icon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/svg/google-icon.svg');

  /// File path: assets/svg/import.svg
  SvgGenImage get import => const SvgGenImage('assets/svg/import.svg');

  /// File path: assets/svg/loader.svg
  SvgGenImage get loader => const SvgGenImage('assets/svg/loader.svg');

  /// File path: assets/svg/note-icon.svg
  SvgGenImage get noteIcon => const SvgGenImage('assets/svg/note-icon.svg');

  /// File path: assets/svg/play-square.svg
  SvgGenImage get playSquare => const SvgGenImage('assets/svg/play-square.svg');

  /// File path: assets/svg/profile-icon.svg
  SvgGenImage get profileIcon =>
      const SvgGenImage('assets/svg/profile-icon.svg');

  /// File path: assets/svg/script.svg
  SvgGenImage get script => const SvgGenImage('assets/svg/script.svg');

  /// File path: assets/svg/telep.svg
  SvgGenImage get telep => const SvgGenImage('assets/svg/telep.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        activityIcon,
        appleIcon,
        camera,
        close,
        cloud2Icon,
        cloudIcon,
        dropArrow,
        googleIcon,
        import,
        loader,
        noteIcon,
        playSquare,
        profileIcon,
        script,
        telep
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
