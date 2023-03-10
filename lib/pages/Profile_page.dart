import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/components/profile_img.dart';
import 'package:gdsc_nu/pages/testpages/easter_egg.dart';
import 'package:gdsc_nu/services/google_signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 5.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0, left: 1.0),
                                    child: Text(
                                      "Hi, ${user.displayName!}",
                                      style: GoogleFonts.roboto(
                                        fontSize: 30.0,
                                      ),
                                    ),
                                  ),
                                  ProfileImg(),

                                  // Padding(
                                  //   padding: const EdgeInsetsDirectional.fromSTEB(
                                  //       0, 0, 16, 0),
                                  //   child: Row(
                                  //     mainAxisSize: MainAxisSize.max,
                                  //     children: [
                                  //       Container(
                                  //         width: 44,
                                  //         height: 44,
                                  //         decoration: BoxDecoration(
                                  //           borderRadius:
                                  //               BorderRadius.circular(8),
                                  //           border: Border.all(
                                  //             width: 2,
                                  //           ),
                                  //         ),
                                  //         child: IconButton(
                                  //           icon: const Icon(
                                  //             Icons.edit_outlined,
                                  //             size: 24,
                                  //           ),
                                  //           onPressed: () {
                                  //             Navigator.push(
                                  //               context,
                                  //               MaterialPageRoute(
                                  //                 builder: (context) => FunPage(),
                                  //               ),
                                  //             );
                                  //           },
                                  //         ),
                                  //       ),
                                  //       Padding(
                                  //         padding: const EdgeInsetsDirectional
                                  //             .fromSTEB(12, 0, 0, 0),
                                  //         child: Container(
                                  //           width: 44,
                                  //           height: 44,
                                  //           decoration: BoxDecoration(
                                  //             borderRadius:
                                  //                 BorderRadius.circular(8),
                                  //             border: Border.all(
                                  //               width: 2,
                                  //             ),
                                  //           ),
                                  //           child: IconButton(
                                  //             // borderColor: Colors.transparent,
                                  //             // borderRadius: 30,
                                  //             // buttonSize: 46,
                                  //             icon: const Icon(
                                  //               Icons.login_rounded,
                                  //               color: Colors.redAccent,
                                  //               size: 24,
                                  //             ),
                                  //             onPressed: () async {
                                  //               final privder =
                                  //                   Provider.of<SigninProvider>(
                                  //                       context,
                                  //                       listen: false);
                                  //               privder.logout();
                                  //             },
                                  //           ),
                                  //         ),
                                  //       ),
                                  // ],
                                  // ),
                                  // ),
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              endIndent: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
