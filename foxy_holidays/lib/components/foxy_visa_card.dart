import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VisaDestinationCard extends StatelessWidget {
  final String imageUrl;
  final String destinationName;
  final String price;

  const VisaDestinationCard({
    Key? key,
    required this.imageUrl,
    required this.destinationName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri whatsappUri = Uri.parse('https://wa.me/919020827827');

    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(whatsappUri)) {
          launchUrl(whatsappUri);
        } else {
          // Handle error
        }
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: 270,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  color: Color(0x230F1113),
                  offset: Offset(0, 4),
                )
              ],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFF1F4F8),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag:
                      destinationName, // Ensure this tag is unique for each card
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.asset(
                      imageUrl,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          destinationName,
                          style: const TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF14181B),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFF14181B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'From $price',
                            style: const TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
