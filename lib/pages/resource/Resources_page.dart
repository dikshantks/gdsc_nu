// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/resource/Appdev.dart';
import 'package:gdsc_nu/pages/resource/Webdev.dart';
import 'package:gdsc_nu/pages/resource/repolinks.dart';

class ResourcesPage extends StatefulWidget {
  static const resources = "resources";
  const ResourcesPage({super.key});

  @override
  State<ResourcesPage> createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: const [
              resource_tab(),
              Expanded(
                child: TabBarView(
                  children: [
                    AppdevPage(),
                    Webdevpage(),
                    Githubpage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class resource_tab extends StatelessWidget {
  const resource_tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          icon: FaIcon(
            FontAwesomeIcons.android,
            color: kprimary,
          ),
        ),
        Tab(
          icon: FaIcon(
            FontAwesomeIcons.code,
            color: kprimary,
          ),
        ),
        Tab(
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: kprimary,
          ),
        ),
      ],
    );
  }
}
