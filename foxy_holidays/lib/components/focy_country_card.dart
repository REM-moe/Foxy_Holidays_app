import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationCard extends StatelessWidget {
  final String countryName;
  final String description;
  final String imagePath;

  const DestinationCard(
      {Key? key,
      required this.countryName,
      required this.description,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri whatsappUri = Uri.parse('https://wa.me/919020827827');

    return GestureDetector(
      onTap: () async {
        launchUrl(whatsappUri);
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 7,
                color: Color(0x2F1D2429),
                offset: Offset(
                  0.0,
                  3,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        countryName,
                        style: const TextStyle(
                          color: Color(0xFF14181B),
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: const TextStyle(
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
