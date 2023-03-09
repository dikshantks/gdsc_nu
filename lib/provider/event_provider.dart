import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:gdsc_nu/models/event_model.dart';

class EventProvider with ChangeNotifier {
  List<Eventmodel> eventlist = [];
  List<Eventmodel> get getevents {
    return eventlist;
  }

  Future<List<Eventmodel>> getEvent() async {
    final snapshot =
        await FirebaseFirestore.instance.collection("eventsDetail").get();
    eventlist = snapshot.docs.map((e) => Eventmodel.fromSnapshot(e)).toList();
    return eventlist;
  }
}
