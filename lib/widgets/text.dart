import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CapyText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final String font;
  final FontWeight? fontWeight;
  final TextAlign? alignText;

  CapyText.castoro({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.alignText,
    this.fontWeight,
  }) : font = GoogleFonts.castoro().fontFamily!;
  CapyText.catamaran({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.alignText,
    this.fontWeight,
  }) : font = GoogleFonts.catamaran().fontFamily!;
  CapyText.carterOne({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.alignText,
    this.fontWeight,
  }) : font = GoogleFonts.carterOne().fontFamily!;
  CapyText.poppins({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.alignText,
    this.fontWeight,
  }) : font = GoogleFonts.poppins().fontFamily!;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: font,
          fontWeight: fontWeight),
      textAlign: alignText,
    );
  }
}
