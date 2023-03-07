// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/drop_down.dart';

class Services {
  static Future<void> showbottomsheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        // backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>  [
                 Flexible(
                  child: Text(
                    "Choose Mode: ",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: DropDownW(),
                ),
              ],
            ),
          );
        });
  }
}
