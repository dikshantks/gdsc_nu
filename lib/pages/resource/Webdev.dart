import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';

class Webdevpage extends StatelessWidget {
  const Webdevpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Accordion(
          // flipRightIconIfOpen: false,
          openAndCloseAnimation: true,
          // maxOpenSections: 2,
          headerBackgroundColorOpened: kscaffhold2,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          children: [
            AccordionSection(
              leftIcon: const Icon(
                Icons.one_k,
                color: Colors.white,
              ),
              headerBackgroundColor: kscaffhold2,
              header: const Text(
                'Introduction',
              ),
              content: Text(
                loremIpsum,
                style: TextStyle(color: kprimary),
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              leftIcon: const Icon(
                Icons.one_k,
                color: Colors.white,
              ),
              headerBackgroundColor: kscaffhold2,
              header: const Text(
                'Introduction',
              ),
              content: Text(
                loremIpsum,
                style: TextStyle(color: kprimary),
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              leftIcon: const Icon(
                Icons.one_k,
                color: Colors.white,
              ),
              headerBackgroundColor: kscaffhold2,
              header: const Text(
                'Introduction',
              ),
              content: Text(
                loremIpsum,
                style: TextStyle(color: kprimary),
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
          ],
        ),
      ),
    );
  }
}
