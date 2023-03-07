// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({
    super.key,
    this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Moje konto',
              style: GoogleFonts.poppins(color: Colors.white),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hej 🖐',
              style: GoogleFonts.raleway(fontSize: 22),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Jesteś zalogowany jako -  ${user?.email}',
              style: GoogleFonts.raleway(fontSize: 18),
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  'Wyloguj się',
                  style: GoogleFonts.raleway(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
