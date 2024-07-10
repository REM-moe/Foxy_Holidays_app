import 'package:flutter/material.dart';
import 'package:foxy_holidays/models/tours.dart';

class MyTourTile extends StatelessWidget {
  final Tour tour;

  const MyTourTile({super.key, required this.tour});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: Column(
        children: [
          // tour image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              child: Image(image: AssetImage(tour.tourimgpath)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // tour name
          Text(
            tour.tourname,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          //tour days
          Text(
            "${tour.days} days",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
          // tour description
          Text(tour.description),
          // tour price
          Text(
            "₹${tour.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
