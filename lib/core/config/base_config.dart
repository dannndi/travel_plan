import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseConfig {
  static Color primaryColor = Color(0xFF4973FC);
  static Color secondaryColor = Color(0xFFFA9150);
  static Color accentColor1 = Color(0xFF2DC0FD);
  static Color accentColor2 = Color(0xFFF97363);

  static double devideHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double devideWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static TextStyle textFont = GoogleFonts.sourceSansPro().copyWith(
    color: Colors.black,
    fontSize: 15,
  );

  static TextStyle numberFont = GoogleFonts.lato().copyWith(
    color: Colors.black,
    fontSize: 15,
  );
}
