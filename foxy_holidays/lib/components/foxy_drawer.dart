import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/foxy_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    Center(
                      child: ImageIcon(
                        AssetImage("assets/images/foxy_logo_color.png"),
                        size: 130,
                      ),
                    ),
                  ],
                ),
              ),
              MyListTile(
                myicon: Icons.airport_shuttle,
                mystring: "Explore Packages",
                ontap: () => Navigator.pop(context),
              ),
              MyListTile(
                myicon: Icons.phone,
                mystring: "Contact us",
                ontap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/contact_us");
                },
              ),
              MyListTile(
                myicon: Icons.info_outline,
                mystring: "About us",
                ontap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/about_us");
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: MyListTile(
              myicon: Icons.exit_to_app,
              mystring: "Exit",
              ontap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/intro_page");
              },
            ),
          ),
        ],
      ),
    );
  }
}
