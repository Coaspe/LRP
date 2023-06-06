import 'package:flutter/material.dart';
import 'package:lrp/styles/colors.dart';
import 'package:lrp/styles/fonts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key, this.title});
  final String? title;
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  static LRPColors lrpColors = LRPColors();
  static LRPFonts lrpFonts = LRPFonts();
  _buildCard({
    required Config config,
    Color? backgroundColor = Colors.transparent,
    DecorationImage? backgroundImage,
  }) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: lrpColors.introGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: WaveWidget(
          config: config,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          size: const Size(double.infinity, double.infinity),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Expanded(
              child: _buildCard(
                config: CustomConfig(
                  colors: [
                    Colors.white70,
                    Colors.white54,
                    Colors.white30,
                    Colors.white24,
                  ],
                  durations: [32000, 21000, 18000, 5000],
                  heightPercentages: [0.53, 0.55, 0.54, 0.53],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text("Login", style: lrpFonts.LoginTitle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
