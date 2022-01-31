import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/common/my_font_size.dart';
import 'package:indoflutter/common/my_style.dart';

class WidgetTitle extends StatefulWidget {
  const WidgetTitle({Key? key}) : super(key: key);

  @override
  _WidgetTitleState createState() => _WidgetTitleState();
}

class _WidgetTitleState extends State<WidgetTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Package Status",
              style: MyStyle.textTitleBlack
            ),
          ),
          SizedBox(width: 10,),
          Text(
            "Details",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: MyColors.blackText,
              fontSize: MyFontSize.medium1,
            ),
          ),
          SizedBox(width: 10,),
          Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
