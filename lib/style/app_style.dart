import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color bgColor = const Color(0x00f8ecd8);
  static Color mainColor = const Color(0x00714f13);
  static Color accentColor = const Color(0x00d7d0d0);

  static List<Color> cardsColor = [
    const Color(0x00766565),
    const Color.fromARGB(10, 113, 73, 19),
    const Color.fromARGB(64, 113, 73, 19),
  ];

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.normal);

  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500);
}
 