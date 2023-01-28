// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extencion/custom_theme_extancion.dart';
import 'package:whatsapp_clone/common/routes/routes.dart';

import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/feature/welcome/widgets/language_button.dart';
import 'package:whatsapp_clone/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  navigateToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
              child: Image.asset(
                "assets/images/circle.png",
                color: context.theme.circleImageColor,
              ),
            ),
          )),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                PrivacyAndTerm(),
                CustomElevatedButton(
                  onPressed: () => navigateToLoginPage(context),
                  text: "Agree And Continue",
                ),
                SizedBox(
                  height: 30,
                ),
                LanguageButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
