import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/common/my_font_size.dart';
import 'package:indoflutter/common/my_style.dart';
import 'package:indoflutter/ui/widgets/custom_card.dart';

class WidgetTimeline extends StatefulWidget {
  
  final IconData? icon;
  final Color? bgcolor;
  final String? title1;
  final String? title2;
  final String? time;
  final bool? showCard;

  const WidgetTimeline({Key? key, this.icon, this.bgcolor, this.title1, this.title2, this.time, this.showCard}) : super(key: key);

  @override
  _WidgetTimelineState createState() => _WidgetTimelineState();
}

class _WidgetTimelineState extends State<WidgetTimeline> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Column(
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: widget.bgcolor!,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(child: Icon(widget.icon))),
                Expanded(
                  child: Container(
                    width: 1,
                    color: MyColors.blackText,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title1!,
                          style: MyStyle.textTitleBlack
                              .copyWith(fontSize: MyFontSize.medium2)),
                      SizedBox(height: 5),
                      Text(
                        widget.title2!,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: MyFontSize.medium1,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.time!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MyColors.yellow,
                      fontSize: MyFontSize.small3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              if (widget.showCard!)
              CustomCard(
                  shadow: false,
                  bgColor: MyColors.softGrey,
                  borderRadius: BorderRadius.circular(15),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                          "assets/images/avatar.jpg",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Shipper",
                                style: MyStyle.textParagraphBlack),
                            Text("Tono Artino",
                                style: MyStyle.textParagraphBlack
                                    .copyWith(fontWeight: FontWeight.bold)),
                            Text("KangKurir Sprinter",
                                style: MyStyle.textParagraphBlack),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CustomCard(
                              shadow: false,
                              height: 40,
                              width: 40,
                              bgColor: MyColors.yellow,
                              borderRadius: BorderRadius.circular(10),
                              child: Center(child: Icon(Icons.phone))),
                          Text(
                            "Call",
                            style: TextStyle(
                              fontSize: MyFontSize.medium1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CustomCard(
                              shadow: false,
                              height: 40,
                              width: 40,
                              bgColor: MyColors.yellow,
                              borderRadius: BorderRadius.circular(10),
                              child: Center(child: Icon(Icons.map_rounded))),
                          Text(
                            "Track",
                            style: TextStyle(
                              fontSize: MyFontSize.medium1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(height: 20),
            ],
          ))
        ],
      ),
    );
  }
}
