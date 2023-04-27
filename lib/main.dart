import 'package:flutter/material.dart';
import 'package:match_founder/pages/chat_page.dart';
import 'package:match_founder/pages/find_teammate_page.dart';
import 'package:match_founder/pages/home_page.dart';
import 'package:match_founder/pages/profile_page.dart';
import 'package:match_founder/pages/register_page.dart';
import 'pages/intro_screen.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: {
        '/auth': (context) => LoginPage(),   
        '/sign-up': (context) => RegistrationPage(),
        '/intro_page': (context) => const IntroScreen(),
        '/profile': (context) => const Profile(),
        '/home': (context) =>const HomePage(),
        '/chat': (context) =>const Chat(),
        '/find-teammate': (context) =>const FindTeammate(),
      },
      //initialRoute: '/profile',
    );
  }
}