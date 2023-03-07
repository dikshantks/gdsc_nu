// import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffholdBG : cardCol,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                chatIndex == 0
                    ? Image.network(
                        user.photoURL!,
                        height: 40,
                      )
                    : Image.asset("assets/chatgpt-logo.png", height: 40),
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
