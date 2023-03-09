import 'package:cloud_firestore/cloud_firestore.dart';

class Eventmodel {
  final String heading;
  final String info;
  final String imgurl;
  final String url;
  final String venue;

  Eventmodel({
    required this.heading,
    required this.info,
    required this.imgurl,
    required this.url,
    required this.venue,
  });

  factory Eventmodel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentsnapshot) {
    final data = documentsnapshot.data()!;
    return Eventmodel(
      heading: data["heading"],
      info: data["info"],
      imgurl: data["imgurl"],
      url: data["url"],
      venue: data["venue"],
    );
  }

  // final db = FirebaseFirestore.instance;


}
