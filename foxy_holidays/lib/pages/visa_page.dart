import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/foxy_visa_card.dart';

class FoxyVisaPage extends StatelessWidget {
  const FoxyVisaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foxy Visa Page',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        // Add any other appbar configurations as needed
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(16),
          ),
        ),
        child: const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Your existing content here
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Text(
                    'Experience Top VISA Service',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF14181B),
                      fontSize: 24,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                VisaDestinationCard(
                    imageUrl: "assets/images/dubai.webp",
                    destinationName: "DUBAI",
                    price: "From Rs 5,000/-"),
                VisaDestinationCard(
                    imageUrl: "assets/images/china.webp",
                    destinationName: "CHINA",
                    price: "From Rs 7,917/-"),
                VisaDestinationCard(
                    imageUrl: "assets/images/singa.webp",
                    destinationName: "SINGAPORE",
                    price: "From Rs 2,500/-"),
                VisaDestinationCard(
                    imageUrl: "assets/images/bharain.webp",
                    destinationName: "BAHRAIN",
                    price: "From Rs 13,199/-"),
                VisaDestinationCard(
                    imageUrl: "assets/images/thai.webp",
                    destinationName: "THAILAND",
                    price: "From Rs 3,500/-"),
                VisaDestinationCard(
                    imageUrl: "assets/images/masia.webp",
                    destinationName: "MALAYSIA",
                    price: "From Rs 3,550/-"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
