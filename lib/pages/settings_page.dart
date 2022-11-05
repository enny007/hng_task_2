import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hng_task_2/helpers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //dont forget to add switch orientation
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Text(
                'You can select a particular theme mode based on your preference in the drop down below.',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return DropdownButton<String>(
                  value: value.currentTheme,
                  items: [
                    DropdownMenuItem(
                      value: 'light',
                      child: Text(
                        'Light Mode',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'dark',
                      child: Text(
                        'Dark Mode',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'system',
                      child: Text(
                        'System Mode',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                  onChanged: (val) {
                    value.changeTheme(val ?? 'system');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
