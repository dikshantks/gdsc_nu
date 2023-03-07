// import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import '../constant.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffholdBG : cardCol,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex == 0 ? "assets/brain.png" : "assets/chat.png",
                  height: 45.0,
                ),
                // Icon(
                //   chatIndex == 0 ? Icons.heat_pump_sharp : Icons.abc,
                //   size: 40.0,
                // ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: chatIndex == 0
                      ? Text(msg)
                      : DefaultTextStyle(
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                          child: Text(
                            msg.trim(),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
