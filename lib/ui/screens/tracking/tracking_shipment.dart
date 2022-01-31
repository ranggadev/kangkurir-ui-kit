import 'package:flutter/material.dart';
import 'package:indoflutter/common/my_colors.dart';
import 'package:indoflutter/ui/screens/tracking/widget_banner.dart';
import 'package:indoflutter/ui/screens/tracking/widget_timeline_wrapper.dart';
import 'package:indoflutter/ui/screens/tracking/widget_title.dart';

class TrackingShipment extends StatefulWidget {
  const TrackingShipment({ Key? key }) : super(key: key);

  @override
  _TrackingShipmentState createState() => _TrackingShipmentState();
}

class _TrackingShipmentState extends State<TrackingShipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: Text(
          "Tracking Shipment",
          style: TextStyle(
            color: MyColors.blackText
          ),
        ),
        iconTheme: IconThemeData(
          color: MyColors.blackText
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          WidgetBanner(),
          WidgetTitle(),
          WidgetTimelineWrapper()
        ],
      ),
    );
  }
}