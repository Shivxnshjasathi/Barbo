import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

fontstyle(String font, double size, Color col) {
  return Text(
    font,
    style: GoogleFonts.poppins(
        color: col, fontSize: size, fontWeight: FontWeight.w600),
  );
}
