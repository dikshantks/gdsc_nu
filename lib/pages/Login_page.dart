import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/pages_page.dart';
import 'package:gdsc_nu/services/google_signin.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                constraints: const BoxConstraints(
                  maxWidth: 600,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.network(
                      '',
                    ).image,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.45, -0.75),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/GDSC NIIT Logo.png',
                                width: 358,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: DefaultTabController(
                            length: 1,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      ThemeData.dark().primaryColorLight,
                                  labelPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 24, 0),
                                  indicatorWeight: 3,
                                  tabs: [
                                    const Tab(
                                      text: 'Login',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                            child: GoogleAuthButton(
                                              onPressed: () {
                                                final provider =
                                                    Provider.of<SigninProvider>(
                                                        context,
                                                        listen: false);
                                                provider.googleLogin();

                                                // Navigator.pushReplacement(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //     builder: (_) =>
                                                //         BottomPage(),
                                                //   ),
                                                // );
                                              },
                                              style: AuthButtonStyle(
                                                buttonColor: kscaffhold2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
