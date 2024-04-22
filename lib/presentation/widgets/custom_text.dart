import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constraints.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14.0,
    this.height = 1.4,
    this.maxLine = 6,
    this.color = blackColor,
    this.decoration = TextDecoration.none,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    this.fontStyle = FontStyle.normal,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final TextAlign textAlign;
  final int maxLine;
  final TextOverflow overflow;
  final TextDecoration decoration;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLine,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
        color: color,
        height: height.h,
        decoration: decoration,
        fontStyle: fontStyle,
      ),
    );
  }
}

class LogoText extends StatelessWidget {
  const LogoText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14.0,
    this.height = 1.4,
    this.maxLine = 6,
    this.color = blackColor,
    this.decoration = TextDecoration.none,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    this.fontStyle = FontStyle.normal,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final TextAlign textAlign;
  final int maxLine;
  final TextOverflow overflow;
  final TextDecoration decoration;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLine,
      style: GoogleFonts.lobster(
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
        color: color,
        height: height.h,
        decoration: decoration,
        fontStyle: fontStyle,
      ),
    );
  }
}
