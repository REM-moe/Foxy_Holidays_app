import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/foxy_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: ImageIcon(
              AssetImage("assets/images/foxy_logo_color.webp"),
              size: 230,
            ),
          ),
          // button redirect

          FoxyButton(
            onTap: () => Navigator.pushNamed(context, "/main_page"),
            child: const Icon(
              Icons.arrow_right_alt_sharp,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
