import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color baseTextColor = const Color(0xff000000);

double baseTextSize = 16;
double titleTextSize = 20;
double smallTextSize = 12;

TextStyle bodyTextStyle = GoogleFonts.neuton(
  color: baseTextColor,
  fontSize: baseTextSize,
);

TextStyle centeredTitleTextStyle = GoogleFonts.neuton(
  color: baseTextColor,
  fontSize: titleTextSize,
);

TextStyle infoTextStyle = GoogleFonts.neuton(
  color: baseTextColor,
  fontSize: smallTextSize,
);

TextStyle quoteTextStyle = GoogleFonts.neuton(
  color: baseTextColor,
  fontSize: baseTextSize,
  fontStyle: FontStyle.italic,
);

TextStyle referenceTextStyle = GoogleFonts.neuton(
  color: baseTextColor,
  fontSize: smallTextSize,
  fontStyle: FontStyle.italic,
);
