import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/components/resource_card.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/Resources_page.dart';

class AppdevPage extends StatelessWidget {
  const AppdevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Resourcetab(),
          ],
        ),
      ),
    );
  }
}
