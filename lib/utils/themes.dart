import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextThemes {
  static TextStyle textHeading = GoogleFonts.cabin(
    fontSize: 35,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyTextStyle = TextStyle(
      fontSize: 20,
      color: Colors.teal[800],
      fontStyle: FontStyle.italic);
}
