import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isButtonClicked = false;
  var isCreatingAccount = false;
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isButtonClicked == false
          ? Center(
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
                        setState(() {
                          isButtonClicked = true;
                        });
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
            )
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isCreatingAccount == false
                        ? 'Stwórz konto'
                        : 'Masz już konto?',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: widget.emailController,
                    decoration: const InputDecoration(
                      hintText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: widget.passwordController,
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
                        if (isCreatingAccount == false) {
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: widget.emailController.text,
                              password: widget.passwordController.text,
                            );
                          } catch (error) {
                            setState(() {
                              errorMessage = error.toString();
                            });
                          }
                        } else {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: widget.emailController.text,
                              password: widget.passwordController.text,
                            );
                          } catch (error) {
                            setState(() {
                              errorMessage = error.toString();
                            });
                          }
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (isCreatingAccount == true) ...[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isCreatingAccount = false;
                        });
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.indigo),
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
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.indigo),
                      child: const Text('Zaloguj się'),
                    ),
                  ]
                ],
              ),
            ),
    );
  }
}
