import 'package:flutter/material.dart';
import 'package:foxy_holidays/components/foxy_itinary.dart';
import 'package:foxy_holidays/models/tours.dart';

class GetTours extends ChangeNotifier {
  // available tours
  final List<Tour> _tours = [
    // tour 1
    Tour(
        days: "6",
        description: """
Munnar is a town in the Western Ghats mountain range in India’s Kerala state. A hill station and former resort for the British Raj elite, it's surrounded by rolling hills dotted with tea plantations established in the late 19th century. """,
        price: "20,000",
        tourimgpath: "assets/images/munnar.webp",
        tourname: "MUNNAR"),
    Tour(
        days: "4",
        description: """
The Andaman and Nicobar Islands is a union territory of India. It consists of 836 islands (of which only 31 are inhabited) grouped into two island groups: the northern Andaman Islands and the southern Nicobar Islands, separated by a 150 km (93 mi) wide channel.""",
        price: "60,000",
        tourimgpath: "assets/images/andaman.webp",
        tourname: "ANDAMAN"),
    Tour(
        days: "6",
        description: """
Delhi, India’s capital territory, is a massive metropolitan area in the country’s north. In Old Delhi, a neighborhood dating to the 1600s, stands the imposing Mughal-era Red Fort, a symbol of India, and the sprawling Jama Masjid mosque.""",
        price: "30,000",
        tourimgpath: "assets/images/delhi.webp",
        tourname: "DELHI AGRA"),
    Tour(
        days: "5",
        description: """
Hyderabad is the capital of southern India's Telangana state. A major center for the technology industry, it's home to many upscale restaurants and shops.""",
        price: "20,000",
        tourimgpath: "assets/images/hyd.webp",
        tourname: "HYDREBAD"),
  ];

  // get tours
  List<Tour> get tours => _tours;
}

class GetItins extends ChangeNotifier {
  // available ities
  final List<Itinerary> _ities = [
    const Itinerary(
        placeName: "placeName",
        roundImage: "",
        timeof: "timeof",
        description: "description",
        placeImage: "placeImage")
  ];

  // get tours
  List<Itinerary> get ities => _ities;
}
