import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/common/my_font_size.dart';
import 'package:indoflutter/ui/screens/tracking/tracking_shipment.dart';
import 'package:indoflutter/ui/widgets/custom_card.dart';

class WidgetStraggeredGridView extends StatefulWidget {
  const WidgetStraggeredGridView({Key? key}) : super(key: key);

  @override
  _WidgetStraggeredGridViewState createState() => _WidgetStraggeredGridViewState();
}

class _WidgetStraggeredGridViewState extends State<WidgetStraggeredGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          CustomCard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.green,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  shadow: false,
                  height: 50,
                  width: 50,
                  bgColor: MyColors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: Icon(Icons.calculate),
                  )
                ),
                SizedBox(height: 15,),
                Text(
                  "Calculate shipment amount",
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: MyFontSize.medium1,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "All price options are base on price",
                  style: TextStyle(
                    color: MyColors.white.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  shadow: false,
                  height: 50,
                  width: 50,
                  bgColor: MyColors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: Icon(Icons.car_rental)
                  )
                ),
                SizedBox(height: 15,),
                Text(
                  "Track Your Shipment Location",
                  style: TextStyle(
                    color: MyColors.blackText,
                    fontSize: MyFontSize.medium1,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Control your package like a boss, you will know every movement of the package and the estimation",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  shadow: false,
                  height: 50,
                  width: 50,
                  bgColor: MyColors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: Icon(Icons.analytics)
                  )
                ),
                SizedBox(height: 15,),
                Text(
                  "Your order history",
                  style: TextStyle(
                    color: MyColors.blackText,
                    fontSize: MyFontSize.medium1,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "View all your order history. See how we sent it so fast. We believe that the sooner we ship to you, the better our service will be in your eyes.",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  shadow: false,
                  height: 50,
                  width: 50,
                  bgColor: MyColors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: Icon(Icons.restore)
                  )
                ),
                SizedBox(height: 15,),
                Text(
                  "Return the damaged item",
                  style: TextStyle(
                    color: MyColors.blackText,
                    fontSize: MyFontSize.medium1,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "We accept returns of damaged goods due to our less than optimal delivery, or external intervention that causes your goods to be damaged. We know that customer satisfaction is our satisfaction",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
