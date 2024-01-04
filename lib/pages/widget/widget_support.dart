import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appwidget {
  static TextStyle boldTextFeildStyle() {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle headTextFeildStyle() {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle lighTextFeildStyle() {
    return GoogleFonts.poppins(
      color: Colors.black38,
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiboldTextFeildStyle() {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    );
  }
}
