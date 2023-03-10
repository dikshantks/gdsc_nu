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
    const ChatScreen(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: kscaffhold2,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          elevation: 1.0,
          indicatorColor: kprimary.withOpacity(0.2),
          indicatorShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14.0),
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          selectedIndex: index,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.book_outlined),
              label: "Resource",
            ),
            NavigationDestination(
              selectedIcon: FaIcon(FontAwesomeIcons.commentDots),
              icon: FaIcon(FontAwesomeIcons.comment),
              label: "Kpt",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.account_circle_rounded),
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
