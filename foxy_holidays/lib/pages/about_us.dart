import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FoxyHolidaysPage extends StatelessWidget {
  const FoxyHolidaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri whatsappUri = Uri.parse('https://wa.me/919020827827');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foxy Holidays',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'locationImage',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/masia.jpg',
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Text(
                        'Foxy Holidays',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFF0F1113),
                                  fontSize: 32,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFF827AE1),
                            size: 24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFF827AE1),
                            size: 24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFF827AE1),
                            size: 24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFF827AE1),
                            size: 24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xFF827AE1),
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                      child: Text(
                        'About',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF57636C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 0, 4),
                      child: Text(
                        'Who We Are\n\nDreaming of the perfect holiday? Look no further! At Foxy Holidays, we guarantee maximum comfort and unforgettable experiences.\n\nAs one of Kerala’s leading tour planners, we treat our clients like royalty. Your satisfaction is our greatest achievement.\n\nOur professional and caring consultants will help you organize economical and enjoyable trips. Our well-trained staff ensure your holiday with Foxy Holidays is truly unique.\n\nWe offer a variety of tour packages: honeymoons, adventure trips, student tours, babymoon packages, health tours, heritage tours, and more. Special packages are available for foreign tourists to explore the beautiful Malabar region.\n\nOur inbound packages cover all of India, from the spectacular north to the peaceful south. We also offer outbound packages to international destinations at attractive rates.\n\nWith tour guides and well-maintained vehicles, we ensure a seamless experience. Foxy Holidays is your ideal travel companion.\n\nWe also provide customizable holiday packages based on your budget and preferences. Your comfort is our top priority.\n\nFoxy Holidays is your one-stop destination for all your holiday needs. Your happiness is our assurance.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF0F1113),
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x55000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE0E3E7),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 16, 16, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    launchUrl(whatsappUri);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    // ignore: deprecated_member_use
                                    primary: const Color(0xFF57636C),
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Travel',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 32,
                      thickness: 1,
                      color: Color(0xFFE0E3E7),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.beach_access_rounded,
                              color: Color(0xFF57636C),
                              size: 44,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 8, 0, 0),
                              child: Text(
                                'Chill',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0F1113),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.pool_rounded,
                              color: Color(0xFF57636C),
                              size: 44,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 8, 0, 0),
                              child: Text(
                                'Fun',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0F1113),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.tour,
                              color: Color(0xFF57636C),
                              size: 44,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 8, 0, 0),
                              child: Text(
                                'Safe',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0F1113),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
