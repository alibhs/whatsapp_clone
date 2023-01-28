// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extencion/custom_theme_extancion.dart';

class ShortHBar extends StatelessWidget {
  const ShortHBar({
    Key? key,
    this.height,
    this.widht,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? widht;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 4,
      width: widht ?? 25,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color ?? context.theme.greyColor!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
