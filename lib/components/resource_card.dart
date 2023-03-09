import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class Resourcetab extends StatefulWidget {
  const Resourcetab({super.key});

  @override
  State<Resourcetab> createState() => _ResourcetabState();
}

class _ResourcetabState extends State<Resourcetab> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 1),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kscaffhold2,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kscaffhold,
              width: 0,
            ),
          ),
          child: Padding(
            padding:const  EdgeInsetsDirectional.fromSTEB(0, 12, 16, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.05),
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
                          'Header',
                          style: GoogleFonts.roboto(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                              'FlutterFlow is a visual development platform that allows you to easily create beautiful and responsive user interfaces for your mobile and web applications. ',
                              style: GoogleFonts.roboto()),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF57636C),
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
