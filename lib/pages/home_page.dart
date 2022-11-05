import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Eniola Ojo',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Flutter Developer',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 30,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/img/me.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  bottom: 80,
                  left: 30,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child: Container(
                          color: Colors.blue,
                          child: const IconButton(
                            onPressed: _launchLinkedIn,
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.7),
                        child: const IconButton(
                          onPressed: _launchGithub,
                          icon: Icon(FontAwesomeIcons.github),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          color: Colors.lightBlue,
                          child: const IconButton(
                            onPressed: _launchTwitter,
                            icon: Icon(FontAwesomeIcons.twitter),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'WHAT I CAN OFFER',
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Text(
                'I have knowledge of the Dart programming language, the Flutter framework, and I want to expand my technical skill set. I am successful both by myself and in groups. I have very high standards for myself, and I am highly determined and eager to put in the necessary effort to complete a project. I am a team player and am eager to learn from senior developers.',
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLandScape() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Eniola Ojo',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/img/me.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        bottom: 60,
                        left: 2,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              child: Container(
                                color: Colors.blue,
                                child: const IconButton(
                                  onPressed: _launchLinkedIn,
                                  icon: Icon(
                                    FontAwesomeIcons.linkedin,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.7),
                              child: const IconButton(
                                onPressed: _launchGithub,
                                icon: Icon(FontAwesomeIcons.github),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: Container(
                                color: Colors.lightBlue,
                                child: const IconButton(
                                  onPressed: _launchTwitter,
                                  icon: Icon(FontAwesomeIcons.twitter),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                          top: 35,
                          left: 19,
                        ),
                        child: Text(
                          'WHAT I CAN OFFER',
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          'I have knowledge of the Dart programming language, the Flutter framework, and I want to expand my technical skill set. I am successful both by myself and in groups. I have very high standards for myself, and I am highly determined and eager to put in the necessary effort to complete a project. I am a team player and am eager to learn from senior developers.',
                          style: GoogleFonts.dmSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchLinkedIn() async {
  const url = 'https://www.linkedin.com/in/ojo-eniola-6a5590226/';
  if (!await canLaunchUrlString(url)) {
    await launchUrlString(
      url,
    );
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchGithub() async {
  const url = 'https://github.com/enny007';
  if (!await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchTwitter() async {
  const url = 'https://twitter.com/OjoSaanu';
  if (!await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
