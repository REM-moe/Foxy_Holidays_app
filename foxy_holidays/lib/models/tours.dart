class Tour {
  final String tourname;
  final String days;
  final String price;
  final String description;
  final String tourimgpath;

  Tour(
      {required this.days,
      required this.description,
      required this.price,
      required this.tourimgpath,
      required this.tourname});
}

// Details of trip for foxy_itinarypage
class TripDetails {
  final String roundImage;
  final String placeName;
  final String timeof;
  final String description;
  final String placeImage;

  TripDetails({
    required this.placeName,
    required this.roundImage,
    required this.timeof,
    required this.description,
    required this.placeImage,
  });
}
