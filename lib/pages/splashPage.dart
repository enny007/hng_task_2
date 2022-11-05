// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hng_task_2/components/hidden_menu.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HiddenMenu(),
        ),
      );
    });
    return Container(
      color: Colors.deepPurple,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/img/port.png',
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
