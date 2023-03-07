import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/Home_page.dart';
import 'package:gdsc_nu/pages/Profile_page.dart';
import 'package:gdsc_nu/pages/Resources_page.dart';
import 'package:gdsc_nu/pages/testpages/chat_screen.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int index = 0;

  final pages = [
    const HomePage(),
    const ResourcesPage(),
    ChatScreen(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: kscaffhold2,
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          selectedIndex: index,
          destinations: const [
            NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: "Home"),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.leanpub), label: "Resource"),
            NavigationDestination(
                selectedIcon: FaIcon(FontAwesomeIcons.commentDots),
                icon: FaIcon(FontAwesomeIcons.comment),
                label: "Kpt"),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.personRifle), label: "Profile"),
          ],
        ),
      ),
    );
  }
}