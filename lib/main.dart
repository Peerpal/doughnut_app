import 'package:doughnut/doughnut_listing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Doughnuts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: HexColor("#C7F0FB"),
        accentColor: HexColor("#E4EFF1"),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.muliTextTheme(Theme.of(context).textTheme),
      ),
      home: DoughnutListing(),
    );
  }
}
