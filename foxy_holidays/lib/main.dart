import 'package:flutter/material.dart';
import 'package:foxy_holidays/models/get_tours.dart';
import 'package:foxy_holidays/pages/about_us.dart';
import 'package:foxy_holidays/pages/contact_us.dart';
import 'package:foxy_holidays/pages/intro_page.dart';
import 'package:foxy_holidays/pages/main_page.dart';
import 'package:foxy_holidays/pages/visa_page.dart';
import 'package:foxy_holidays/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GetTours(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page": (context) => const IntroPage(),
        "/main_page": (context) => const MainPageHome(),
        "/about_us": (context) => const FoxyHolidaysPage(),
        "/contact_us": (context) => const ContactUsComponent(),
        "/visa": (context) => const FoxyVisaPage()
      },
    );
  }
}
