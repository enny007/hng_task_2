import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutColumn extends StatelessWidget {
  const AboutColumn({Key? key, required this.number, required this.description})
      : super(key: key);
  final String number;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: GoogleFonts.roboto(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          description,
          style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
