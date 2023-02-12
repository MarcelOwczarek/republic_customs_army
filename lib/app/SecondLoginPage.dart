import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondLoginPage extends StatefulWidget {
  const SecondLoginPage({
    super.key,
  });

  @override
  State<SecondLoginPage> createState() => _SecondLoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

class _SecondLoginPageState extends State<SecondLoginPage> {
  var isCreatingAccount = false;
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isCreatingAccount == false ? 'Stwórz konto' : 'Masz już konto?',
              style: GoogleFonts.lato(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Hasło',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(errorMessage),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 340,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Text(isCreatingAccount == false
                    ? 'Zarejestruj się'
                    : 'Zaloguj się'),
                onPressed: () async {
                  if (isCreatingAccount == true) {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                      print(error);
                    }
                  } else {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                      print(error);
                    }
                  }
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(foregroundColor: Colors.indigo),
              child: const Text(
                'Kontynuuj jako gość',
              ),
            ),
            if (isCreatingAccount == true) ...[
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAccount = false;
                  });
                },
                style: TextButton.styleFrom(foregroundColor: Colors.indigo),
                child: const Text('Utwórz konto'),
              ),
            ],
            const SizedBox(
              height: 5,
            ),
            if (isCreatingAccount == false) ...[
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAccount = true;
                  });
                },
                style: TextButton.styleFrom(foregroundColor: Colors.indigo),
                child: const Text('Zaloguj się'),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
