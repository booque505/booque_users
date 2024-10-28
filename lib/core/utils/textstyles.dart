import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyle appBarTitleText = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: colorStyles.orange);

  TextStyle regular16 = GoogleFonts.poppins(
    fontSize: 16,
  );

  TextStyle regular12 = GoogleFonts.poppins(
    fontSize: 12,
  );

  TextStyle semibold12 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  TextStyle semibold18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  TextStyle headingBold20 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
}

TextStyles textStyles = TextStyles();
