import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileImg extends StatelessWidget {
  const ProfileImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
        child: Container(
          width: 60,
          height: 60,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            user.photoURL!,
          ),
        ),
      ),
    );
  }
}
