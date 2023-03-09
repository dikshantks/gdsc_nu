import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_nu/constant.dart';
import 'package:gdsc_nu/pages/Login_page.dart';
import 'package:gdsc_nu/pages/pages_page.dart';
import 'package:gdsc_nu/provider/chat_provider.dart';
import 'package:gdsc_nu/provider/event_provider.dart';
import 'package:gdsc_nu/provider/models_provider.dart';
import 'package:gdsc_nu/services/google_signin.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SigninProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => EventProvider(),
        ),
      ],
      child: MaterialApp(
        // showSemanticsDebugger: true,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kscaffhold,
        ),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Oops something went wrong"),
              );
            } else if (snapshot.hasData) {
              return const BottomPage();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }
}
