import 'package:flutter/material.dart';

class FoxyHolidaysWidget extends StatelessWidget {
  const FoxyHolidaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x1F000000),
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Foxy Holidays',
                style: TextStyle(
                  color: Color(0xFF14181B),
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
              ).animateOnPageLoad('textOnPageLoadAnimation1'),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: const Text(
                  'We Take You To Happiness ❤️',
                  style: TextStyle(
                    color: Color(0xFF57636C),
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                  ),
                ).animateOnPageLoad('textOnPageLoadAnimation2'),
              ),
              const Divider(
                height: 24,
                thickness: 2,
                color: Color(0xFFE0E3E7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on Widget {
  Widget animateOnPageLoad(String animationKey) {
    return this;
  }
}
