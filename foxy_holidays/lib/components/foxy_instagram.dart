import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InstagramFoxy extends StatelessWidget {
  const InstagramFoxy({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri InstagramUri =
        Uri.parse("https://www.instagram.com/foxy_holidays/?hl=en");
    return GestureDetector(
      onTap: () async {
        launchUrl(InstagramUri);
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 15),
                    child: Text(
                      'Foxy On Instagram',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 22,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                    child: Container(
                      width: 40,
                      height: 40,
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
              SizedBox(
                height: 300,
                child: Stack(
                  alignment: const AlignmentDirectional(0, 1),
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, -1),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          'assets/images/foxy.png',
                          width: double.infinity,
                          height: 330,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 24, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
