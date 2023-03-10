import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  int value = 0;
  bool positive = false;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Switch to Light Mode',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            width: 110.0,
            child: AnimatedToggleSwitch<bool>.dual(
              current: positive,
              first: false,
              second: true,
              borderColor: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  // blurStyle: BlurStyle.outer,
                  color: kscaffhold2.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 1.5),
                ),
              ],
              onChanged: (b) {
                setState(() => positive = b);
              },
              colorBuilder: (b) => b ? kscaffhold2 : kscaffhold2,
              iconBuilder: (value) => value
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
              textBuilder: (value) => value
                  ? const Icon(Icons.light_mode_outlined)
                  : const Icon(Icons.dark_mode_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
