import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';

import '../../components/resource_card.dart';

class Webdevpage extends StatelessWidget {
  const Webdevpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Resourcecard(),
            Resourcecard(),
            Resourcecard(),
            Resourcecard(),
          ],
        ),
      ),
    );
  }
}
