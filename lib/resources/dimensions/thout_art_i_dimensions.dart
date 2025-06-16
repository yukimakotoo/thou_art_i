import 'package:flutter/widgets.dart';

final class ThouArtIDimensionsValue {
  const ThouArtIDimensionsValue(this.value);

  final double value;

  EdgeInsets get all => EdgeInsets.all(value);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: value);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: value);
}

abstract class ThouArtIDimensions {
  static const ThouArtIDimensionsValue padding = ThouArtIDimensionsValue(16);
}
