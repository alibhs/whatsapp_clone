import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extencion/custom_theme_extancion.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class PrivacyAndTerm extends StatelessWidget {
  const PrivacyAndTerm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Read Our ',
              style: TextStyle(color: context.theme.greyColor, height: 1.5),
              children: [
                TextSpan(
                    text: 'Privacy Policy. ',
                    style: TextStyle(
                      color: context.theme.blueColor,
                    )),
                TextSpan(
                  text: 'Tap "Agree and Continue" to accept the ',
                ),
                TextSpan(
                    text: 'Terms of Services',
                    style: TextStyle(
                      color: context.theme.blueColor,
                    )),
              ])),
    );
  }
}
