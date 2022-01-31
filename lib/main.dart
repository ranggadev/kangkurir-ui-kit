import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IndoFlutter',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Home(),
    );
  }
}
