import 'package:flutter/material.dart';
import 'package:lrp/styles/colors.dart';
import 'package:lrp/styles/fonts.dart';
import 'package:lrp/ui/common/login_input_field.dart';
import 'package:lrp/ui/common/login_oauth_btn.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  static LRPColors lrpColors = LRPColors();
  static LRPFonts lrpFonts = LRPFonts();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  _buildCard({
    required Config config,
    Color? backgroundColor = Colors.transparent,
    DecorationImage? backgroundImage,
  }) {
    return Container(
        width: double.infinity,
        height: double.infinity,
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
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text("Login", style: lrpFonts.LoginTitle),
                  Column(
                    children: [
                      LoginIDInputField(
                          controller: _idController, placeholder: "ID를 입력하세요"),
                      const SizedBox(
                        height: 20,
                      ),
                      LoginPasswordInputField(
                        controller: _passwordController,
                        placeholder: "패스워드를 입력하세요",
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 280,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lrpColors.accent2),
                            onPressed: () => {},
                            child: const Text(
                              "Login",
                              style: TextStyle(fontSize: 15),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Text(
                          "비밀번호를 잊으셨나요?",
                          style: TextStyle(color: lrpColors.greyMedium),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 4,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      children: [
                        LoginOauthBtn(
                            text: "Kakao",
                            imageUri: "assets/images/oauth/kakao-talk.png",
                            color: lrpColors.kakao),
                        LoginOauthBtn(
                            text: "Google",
                            imageUri: "assets/images/oauth/google.png",
                            color: lrpColors.kakao)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
