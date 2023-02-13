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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hej',
              style: GoogleFonts.raleway(fontSize: 30),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Jesteś zalogowany jako -  ${user?.email}',
              style: GoogleFonts.raleway(fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: const Text('Wyloguj się'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
