import 'package:flutter/material.dart';

class FlightInfoCard extends StatelessWidget {
  const FlightInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Color(0x230F1113),
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLocationColumn(context, 'Departure', 'Foxy', '(FOX)'),
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
              decoration: const BoxDecoration(
                color: Color(0xFFF1F4F8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CLICK TO GET YOUR VISA VIA FOXY HOLIDAYS',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                          letterSpacing: 0,
                        ),
                  ),
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
      crossAxisAlignment:
          isEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: const Color(0xFF57636C),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          location,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: const Color(0xFF14181B),
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          code,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: const Color(0xFF57636C),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
