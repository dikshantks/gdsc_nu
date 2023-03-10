import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/Roadmap.dart';
import 'package:google_fonts/google_fonts.dart';

class Resourcecard extends StatefulWidget {
  const Resourcecard({super.key});

  @override
  State<Resourcecard> createState() => _ResourcecardState();
}

class _ResourcecardState extends State<Resourcecard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      // alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kscaffhold2,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kscaffhold,
              // width: 0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 16, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, -0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFF7F5),
                        borderRadius: BorderRadius.circular(4),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Introduction',
                          style: GoogleFonts.roboto(
                            fontSize: 20.0,
                            color: Colors.white70,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text('FlutterFlow . ',
                              style: GoogleFonts.roboto(color: Colors.white60)),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoadMap(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.chevron_right_rounded),
                  color: Color(0xFF57636C),
                  iconSize: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
