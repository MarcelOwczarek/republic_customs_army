import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:republic_customs_army/app/SecondLoginPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/logowanie.jpg'),
              radius: 160,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Witaj w Republic Customs Army!',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Zajmujemy się personalizacją figurek lego na zamówienie. Wykonujemy również projekty akcesorii.',
              style: GoogleFonts.poppins(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 340,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SecondLoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Text('Zaloguj się'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
