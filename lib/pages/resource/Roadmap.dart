// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class RoadMap extends StatefulWidget {
  const RoadMap({super.key});

  @override
  State<RoadMap> createState() => _RoadMapState();
}

class _RoadMapState extends State<RoadMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro to flutter"),
      ),
      body: ListView(children: [
        TimelineTile(),
      ]),
    );
  }
}
