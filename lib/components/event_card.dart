// ignore_for_file: prefer_const_constructors
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/models/event_model.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Container(
      color: kscaffhold2,
      height: 260,
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
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1567850083672-65ae6c8a696b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGNhbm5hYmlzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
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
                              Icons.flutter_dash,
                              color: Color(0xFF39D2C0),
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
                                  Color(0xFF4B39EF),
                                  Color(0xFF39D2C0),
                                  Color(0xFFFF5963)
                                ],
                                stops: [0, 0.3, 1],
                                begin: AlignmentDirectional(1, 0.98),
                                end: AlignmentDirectional(-1, -0.98),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
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
              'Cannabis in Thailand',
              style: GoogleFonts.roboto(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Text(
              'Thialand just legalized Cannabis in their country. But there’s more to the story. Do you think you know it?',
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
                  '16 friends played',
                  style: GoogleFonts.outfit(
                    color: Color(0xFFFF5963),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
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