import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/focy_country_card.dart';
import 'package:foxy_holidays/components/focy_widget.dart';
import 'package:foxy_holidays/components/foxy_drawer.dart';
import 'package:foxy_holidays/components/foxy_instagram.dart';
import 'package:foxy_holidays/components/foxy_tourtile.dart';
import 'package:foxy_holidays/components/foxy_visa.dart';
import 'package:foxy_holidays/models/get_tours.dart';
import 'package:provider/provider.dart';

class MainPageHome extends StatelessWidget {
  const MainPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    final tours = context.watch<GetTours>().tours;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foxy Holidays",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          // Foxy CARD
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: FoxyHolidaysWidget(),
          ),

          // INSTAGRAM CARD
          const InstagramFoxy(),
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              "POPULAR PACKAGES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ), // VISA CARD
          GestureDetector(
            onTap: () {
              // to Visa Page
              Navigator.pushNamed(context, "/visa");
            },
            child: const FlightInfoCard(),
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: tours.length,
              itemBuilder: (context, index) {
                final tour = tours[index];
                return MyTourTile(
                  tour: tour,
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Center(
            child: Text(
              "OUR MOST POPULAR DESTINATIONS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          // malasia
          const Wrap(
            alignment: WrapAlignment.center,
            children: [
              DestinationCard(
                countryName: "MALAYSIA",
                description:
                    "Experience the vibrant culture and beautiful scenery",
                imagePath: "assets/images/masia.jpg",
              ),
              DestinationCard(
                countryName: "CHINA",
                description: "Discover the ancient culture and modern cities",
                imagePath: "assets/images/china.jpg",
              ),
              DestinationCard(
                  countryName: "MALDIVES",
                  description: "Explore stunning island resorts",
                  imagePath: "assets/images/mald.jpg"),
              DestinationCard(
                countryName: "THAILAND",
                description:
                    "Enjoy the beautiful beaches and rich cultural heritage",
                imagePath: "assets/images/thai.jpg",
              ),
              DestinationCard(
                countryName: "KASHMIR",
                description: "Experience the breathtaking landscapes",
                imagePath: "assets/images/kash.jpg",
              ),
              DestinationCard(
                countryName: "MANALI",
                description: "Escape to the serene hills",
                imagePath: "assets/images/manali.jpg",
              ),
              DestinationCard(
                countryName: "AGRA",
                description: "Visit the iconic Taj Mahal",
                imagePath: "assets/images/agra.jpg",
              ),
              DestinationCard(
                countryName: "DUBAI",
                description: "Discover luxury and modernity",
                imagePath: "assets/images/dubai.jpg",
              ),
              DestinationCard(
                countryName: "DELHI",
                description: "Explore India's vibrant capital city",
                imagePath: "assets/images/delhi.jpg",
              ),
              DestinationCard(
                countryName: "AND MORE...",
                description: "Explore more exciting destinations",
                imagePath: "assets/images/world.jpg",
              ),
            ],
          ),

          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
