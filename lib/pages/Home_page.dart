// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/components/event_card.dart';
import 'package:gdsc_nu/models/event_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/profile_img.dart';
import '../provider/event_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    Eventmodel one = Eventmodel(
        heading: "bruh ",
        info: "gruhhh",
        imgurl:
            "https://fastly.picsum.photos/id/692/200/300.jpg?hmac=qoaBsJRR_eEfM9cuFXDECrJYjrebuLirYg5r7H_VVok",
        url: "",
        venue: "dgdfgdfgd");

    final provider = Provider.of<EventProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/GDSC NIIT Logo.png',
                            width: 174.5,
                            height: 77.6,
                            fit: BoxFit.fitWidth,
                          ),
                          ProfileImg(),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.roboto(
                                  fontSize: 25.0,
                                  color: Colors.white70,
                                ),
                                children: [
                                  TextSpan(text: "Hello, "),
                                  TextSpan(text: "${user.displayName}"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Text(
                              'Events',
                              style: GoogleFonts.roboto(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
                child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                EventCard(one: one),
                EventCard(one: one),
                EventCard(one: one),
                EventCard(one: one),
                EventCard(one: one),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
