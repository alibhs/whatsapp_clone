import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/models/user_model.dart';
import 'package:whatsapp_clone/feature/auth/pages/login_page.dart';
import 'package:whatsapp_clone/feature/auth/pages/user_info_page.dart';
import 'package:whatsapp_clone/feature/auth/pages/verification_page.dart';
import 'package:whatsapp_clone/feature/chat/pages/chat_page.dart';
import 'package:whatsapp_clone/feature/contact/pages/contact_page.dart';
import 'package:whatsapp_clone/feature/home/pages/home_page.dart';
import 'package:whatsapp_clone/feature/welcome/pages/welcomePage.dart';

class Routes {
  static const String welcome = "welcome";
  static const String login = "login";
  static const String verification = "verification";
  static const String userInfo = "user-info";
  static const String home = "home";
  static const String contact = "contact";
  static const String chat = "chat";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => WelcomePage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
          ),
        );
      case userInfo:
        final String? profileImageUrl = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (context) => UserInfoPage(
            profileImageUrl: profileImageUrl,
          ),
        );
      case home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case contact:
        return MaterialPageRoute(
          builder: (context) => ContactPage(),
        );
      case chat:
        final UserModel user = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (context) => ChatPage(
            user: user,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No Page Route Provided"),
            ),
          ),
        );
    }
  }
}
