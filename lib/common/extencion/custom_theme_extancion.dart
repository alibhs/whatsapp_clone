import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

extension ExtandedTheme on BuildContext {
  CustomThemeExtencion get theme {
    return Theme.of(this).extension<CustomThemeExtencion>()!;
  }
}

class CustomThemeExtencion extends ThemeExtension<CustomThemeExtencion> {
  static final lightMode = CustomThemeExtencion(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighlightColor: Color(0xFFE8E8ED),
    authAppBarTextColor: Coloors.greenLight,
    photoIconBgColor: Color(0xfff0f2f3),
    photoIconColor: Color(0xff9daab3),
  );
  static final darkMode = CustomThemeExtencion(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighlightColor: Color(0xFF09141A),
    authAppBarTextColor: Color(0xffe9edef),
    photoIconBgColor: Color(0xff283339),
    photoIconColor: Color(0xff61717b),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? authAppBarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  CustomThemeExtencion({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighlightColor,
    this.authAppBarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtencion> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighlightColor,
    Color? authAppBarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }) {
    return CustomThemeExtencion(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtencion> lerp(
      ThemeExtension<CustomThemeExtencion>? other, double t) {
    // TODO: implement lerp
    if (other is! CustomThemeExtencion) return this;
    return CustomThemeExtencion(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      authAppBarTextColor:
          Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
    );
  }
}
