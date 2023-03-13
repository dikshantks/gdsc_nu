// ignore_for_file: prefer_const_constructors
import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdsc_nu/models/event_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';

class EventCard extends StatefulWidget {
  EventCard({super.key, required this.one});
  Eventmodel one;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  Future<void> _launchurl(String Url) async {
    final Uri uri = Uri.parse(Url);

    if (!await launchUrl(
      uri,
    )) {
      throw "cannot launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kscaffhold2,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      height: 255.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            child: Stack(
              alignment: AlignmentDirectional(0, 1),
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                      // bottomLeft: Radius.circular(0),
                      // bottomRight: Radius.circular(0),
                      // topLeft: Radius.circular(8),
                      // topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      widget.one.imgurl,
                      width: double.infinity,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              FaIcon(FontAwesomeIcons.code).icon,
                              color: kprimary,
                              size: 24,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.red,
                                  Colors.yellow,
                                  Colors.green,
                                ],
                                stops: [
                                  0.3,
                                  1.3,
                                  0.3,
                                  1,
                                ],
                                begin: AlignmentDirectional(1, 0.98),
                                end: AlignmentDirectional(-1, -0.98),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                              child: GestureDetector(
                                onTap: () {
                                  _launchurl(widget.one.url);
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    color: Color(0xFF101213),
                                    size: 32,
                                  ),
                                ),
                              ),
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
            child: Text(
              widget.one.heading,
              style: GoogleFonts.roboto(
                color: Colors.white70,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Text(
              widget.one.info,
              style: GoogleFonts.roboto(
                color: Color(0xFF57636C),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.one.venue,
                  style: GoogleFonts.outfit(
                    color: kprimary.withBlue(150).withGreen(100),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// Padding(
//       padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 10),
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: kscaffhold2,
//           boxShadow: const [
//             BoxShadow(
//               blurRadius: 7,
//               color: Color(0x2F1D2429),
//               offset: Offset(0, 3),
//             )
//           ],
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               // ClipRRect(
//               //   borderRadius: BorderRadius.circular(8),
//               //   child: CachedNetworkImage(
//               //     imageUrl: widget.one.imgurl,
//               //     height: 100.0,
//               //     fit: BoxFit.cover,
//               //     placeholder: (context, url) => Container(),
//               //     errorWidget: (context, url, error) => Container(
//               //       child: CircularProgressIndicator(),
//               //     ),
//               //   ),
//               // ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Text(
//                       widget.one.heading,
//                       // style: FlutterFlowTheme.of(context)
//                       //     .subtitle1,
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Expanded(
//                     child: Text(
//                       widget.one.info,
//                       // style: FlutterFlowTheme.of(context)
//                       //     .bodyText2,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );