import 'package:flutter/material.dart';

class FlightInfoCard extends StatelessWidget {
  const FlightInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Color(0x230F1113),
              offset: Offset(0.0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLocationColumn(context, 'Departure', 'Kerala', '(KER)'),
                  const Icon(
                    Icons.flight,
                    color: Color(0xFF57636C),
                    size: 44,
                  ),
                  _buildLocationColumn(context, 'Arrival', 'World', '(WRLD)',
                      isEnd: true),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F4F8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                border: Border.all(
                  color: const Color(0xFFF1F4F8),
                  width: 1,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Text(
                        'CLICK TO GET YOUR VISA VIA FOXY HOLIDAYS',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black,
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationColumn(
      BuildContext context, String title, String location, String code,
      {bool isEnd = false}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: const Color(0xFF57636C),
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: const Color(0xFF14181B),
                fontSize: 22,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
          child: Text(
            code,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: const Color(0xFF57636C),
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
      ],
    );
  }
}
