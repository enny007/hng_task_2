import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hng_task_2/pages/about_page.dart';
import 'package:hng_task_2/pages/home_page.dart';
import 'package:hng_task_2/pages/settings_page.dart';

class HiddenMenu extends StatefulWidget {
  const HiddenMenu({super.key});

  @override
  State<HiddenMenu> createState() => _HiddenMenuState();
}

class _HiddenMenuState extends State<HiddenMenu> {
  List<ScreenHiddenDrawer> pages = [];
  final TextStyle myTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Homepage',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const AboutPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      isTitleCentered: true,
      screens: pages,
      initPositionSelected: 0,
      contentCornerRadius: 20,
      typeOpen: TypeOpen.FROM_RIGHT,
      curveAnimation: Curves.easeInOut,
      withAutoTittleName: false,
    );
  }
}
