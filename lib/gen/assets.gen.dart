/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibL10nGen get l10n => const $LibL10nGen();
}

class $LibL10nGen {
  const $LibL10nGen();

  /// File path: lib/l10n/intl_en.arb
  String get intlEn => 'lib/l10n/intl_en.arb';

  /// File path: lib/l10n/intl_pl.arb
  String get intlPl => 'lib/l10n/intl_pl.arb';

  /// List of all assets
  List<String> get values => [intlEn, intlPl];
}

class Assets {
  Assets._();

  static const AssetGenImage clothes1 = AssetGenImage('assets/clothes1.jpg');
  static const AssetGenImage clothes2 = AssetGenImage('assets/clothes2.jpg');
  static const AssetGenImage clothes3 = AssetGenImage('assets/clothes3.jpg');
  static const AssetGenImage clothes4 = AssetGenImage('assets/clothes4.jpg');
  static const AssetGenImage clothes5 = AssetGenImage('assets/clothes5.jpg');
  static const AssetGenImage clothesW1 = AssetGenImage('assets/clothesW1.jpg');
  static const AssetGenImage clothesW2 = AssetGenImage('assets/clothesW2.jpg');
  static const AssetGenImage clothesW3 = AssetGenImage('assets/clothesW3.jpg');
  static const AssetGenImage shopee = AssetGenImage('assets/shopee.jpg');
  static const AssetGenImage start = AssetGenImage('assets/start.jpg');
  static const AssetGenImage start1 = AssetGenImage('assets/start1.jpg');
  static const $LibGen lib = $LibGen();

  /// List of all assets
  List<AssetGenImage> get values => [
        clothes1,
        clothes2,
        clothes3,
        clothes4,
        clothes5,
        clothesW1,
        clothesW2,
        clothesW3,
        shopee,
        start,
        start1
      ];
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
