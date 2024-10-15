// Place fonts/custom_icon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: custom_icon
//      fonts:
//       - asset: fonts/custom_icon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'CustomIcon';

  static const IconData search = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData profilebutton = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData marketbutton = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData homebutton = IconData(0xe904, fontFamily: _fontFamily);
}
