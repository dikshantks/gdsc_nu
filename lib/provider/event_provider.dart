import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:gdsc_nu/models/event_model.dart';
import 'package:http/http.dart';

class EventProvider with ChangeNotifier {
  List<Eventmodel> eventlist = [];
  List<Eventmodel> get getevents => eventlist;

  Future<void> getEvent() async {
    final snapshot =
        await FirebaseFirestore.instance.collection("eventsDetail").get();
    eventlist =
        snapshot.docs.map((doc) => Eventmodel.fromSnapshot(doc)).toList();
    notifyListeners();
    // return eventlist;
  }
}
