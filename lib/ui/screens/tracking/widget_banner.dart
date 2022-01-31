import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/common/my_style.dart';
import 'package:indoflutter/ui/widgets/custom_card.dart';

class WidgetBanner extends StatefulWidget {
  const WidgetBanner({Key? key}) : super(key: key);

  @override
  _WidgetBannerState createState() => _WidgetBannerState();
}

class _WidgetBannerState extends State<WidgetBanner> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      shadow: false,
      width: double.infinity,
      bgColor: MyColors.softGrey,
      borderRadius: BorderRadius.circular(15),
      padding: EdgeInsets.all(25),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: CustomCard(
              shadow: false,
              width: double.infinity,
              bgColor: MyColors.green,
              borderRadius: BorderRadius.circular(15),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Track Number",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "KK320221903133431",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      "assets/images/usa.jpg",
                      height: 35,
                      width: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "San Diego, USA",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Baker St. 212",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white
                    ),
                  ),
                  SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      "assets/images/indonesia.jpg",
                      height: 35,
                      width: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Pontianak, Indonesia",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Avenir Vanue 12",
                    style: MyStyle.textParagraphBlack.copyWith(
                      color: MyColors.white
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              )
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 0,
            child: CustomCard(
              shadow: false,
              width: double.infinity,
              bgColor: MyColors.yellow,
              borderRadius: BorderRadius.circular(15),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Services",
                    style: MyStyle.textParagraphBlack.copyWith(
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "KangKurir International",
                    style: MyStyle.textParagraphBlack.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "\$56,43",
                    style: MyStyle.textParagraphBlack.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
