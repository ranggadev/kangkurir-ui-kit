import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/common/my_font_size.dart';
import 'package:indoflutter/common/my_style.dart';
import 'package:indoflutter/ui/screens/tracking/tracking_shipment.dart';
import 'package:indoflutter/ui/widgets/custom_card.dart';

class WidgetBanner extends StatefulWidget {
  const WidgetBanner({Key? key}) : super(key: key);

  @override
  _WidgetBannerState createState() => _WidgetBannerState();
}

class _WidgetBannerState extends State<WidgetBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: Image.asset("assets/images/banner.jpg"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: MyColors.blackText,
                        )),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        "Current Location",
                        style: TextStyle(
                            color: MyColors.blackText, fontSize: MyFontSize.small2),
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.circle_outlined, size: 10, color: MyColors.blackText,),
                          SizedBox(width: 10,),
                          Text(
                            "Pontianak",
                            style: TextStyle(
                                color: MyColors.blackText, fontSize: MyFontSize.medium1),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_drop_down, size: 24, color: MyColors.blackText,),
                        ],
                      ),
                    ],
                  )),
                  Container(
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        "assets/images/avatar.jpg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Text(
                "Tracking Your Package",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.blackText,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Please enter your tracking number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.blackText,
                  fontSize: MyFontSize.medium1,
                ),
              ),
              SizedBox(height: 20),
              CustomCard(
                shadow: false,
                height: 50,
                width: double.infinity,
                bgColor: MyColors.white,
                borderRadius: BorderRadius.circular(10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.car_rental, color: MyColors.yellow,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "Enter track number",
                        style: MyStyle.textParagraphBlack,
                      )
                    ),
                    SizedBox(width: 10,),
                    CustomCard(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
                      },
                      shadow: false,
                      bgColor: MyColors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Text(
                        "Track",
                        style: MyStyle.textParagraphBlack,
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
