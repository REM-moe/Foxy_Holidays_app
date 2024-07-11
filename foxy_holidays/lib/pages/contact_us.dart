import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/focy_widget.dart';

class ContactUsComponent extends StatelessWidget {
  const ContactUsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/world.jpg',
                        width: double.infinity,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'CONTACT US',
                      style: TextStyle(
                        color: Color(0xFF14181B),
                        fontSize: 24,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Text(
                      'Get in touch',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFF1F4F8),
                            offset: Offset(
                              0.0,
                              1,
                            ),
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Foxy Holidays\nKvcomplex Puthiyatheru\nkannur Kerala,\n670011 India.',
                              style: TextStyle(
                                color: Color(0xFF57636C),
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            '+91 4972774527\n+91 9020527527\n+91 9387827827',
                            style: TextStyle(
                              color: Color(0xFF14181B),
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFF1F4F8),
                            offset: Offset(
                              0.0,
                              1,
                            ),
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              '\nFoxy Holidays\nAshraf complex\nPk road, kannur Kerala,\n 670011 India.',
                              style: TextStyle(
                                color: Color(0xFF57636C),
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            '+91 9020 027 027\n+91 9020827827',
                            style: TextStyle(
                              color: Color(0xFF14181B),
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'foxyholidays@gmail.com',
                      style: TextStyle(
                        color: Color(0xFF14181B),
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const FoxyHolidaysWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
