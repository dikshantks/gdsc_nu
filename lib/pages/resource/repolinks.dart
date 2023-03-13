import 'package:flutter/material.dart';

import '../../components/resource_card.dart';

class Githubpage extends StatelessWidget {
  const Githubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Resourcecard(
              title: "Beginners",
            ),
            Resourcecard(
              title: "Intermidiate",
            ),
            Resourcecard(
              title: "Advanced",
            ),
            Resourcecard(
              title: "FAQ",
            ),
          ],
        ),
      ),
    );
  }
}
