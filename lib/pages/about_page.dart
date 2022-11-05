import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/about_column.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? buildPortrait()
                : buildLandScape();
          },
        ),
      ),
    );
  }

  Widget buildPortrait() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Text(
              'Facts about me',
              style: GoogleFonts.dmSans(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: AboutColumn(
                number: '1.',
                description:
                    'I am a self taught flutter developer making life easy for consumers with user-centered and business-oriented design and. I hope to work for different industries including but not limited to the healthcare, legal, entertainment and education industries from product concept to final deliverables.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: AboutColumn(
                  number: '2.',
                  description:
                      'I studied Biomedical Engineering in school and i graduated in 2021. I found love for app development from my desire to breach the gap between technology and healthcare delivery.'),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLandScape() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Facts about me',
                style: GoogleFonts.dmSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 25,
                      ),
                      child: AboutColumn(
                        number: '1.',
                        description:
                            'I am a self taught flutter developer making life easy for consumers with user-centered and business-oriented design and. I hope to work for different industries including but not limited to the healthcare, legal, entertainment and education industries from product concept to final deliverables.',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 25,
                      ),
                      child: AboutColumn(
                          number: '2.',
                          description:
                              'I studied Biomedical Engineering at FUTA and i graduated in 2021. I found love for app development from my desire to breach the gap between technology and healthcare delivery.'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
