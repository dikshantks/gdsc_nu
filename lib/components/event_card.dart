// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gdsc_nu/models/event_model.dart';

import '../constant.dart';

class EventCard extends StatefulWidget {
  EventCard({super.key, required this.one});
  Eventmodel one;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kscaffhold2,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x2F1D2429),
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1569074187119-c87815b476da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHNwb3J0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Main Header',
                      // style: FlutterFlowTheme.of(context)
                      //     .subtitle1,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Text(
                      'hahahahahahaha',
                      // style: FlutterFlowTheme.of(context)
                      //     .bodyText2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
