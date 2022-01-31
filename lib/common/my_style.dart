import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';

import 'my_font_size.dart';

class MyStyle {
  static TextStyle textTitleBlack = TextStyle(
    color: MyColors.blackText,
    fontSize: MyFontSize.large2,
    fontWeight: FontWeight.bold
  );

  static TextStyle textParagraphBlack = TextStyle(
    color: MyColors.blackText,
    fontSize: MyFontSize.medium2,
  );
}