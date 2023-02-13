import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:republic_customs_army/app/features/Bag/BagPageContent.dart';
import 'package:republic_customs_army/app/login/LoginPage.dart';
import 'package:republic_customs_army/app/features/My_Account/MyAccountPageContent.dart';
import 'package:republic_customs_army/app/features/News/NewsPageContent.dart';
import 'package:republic_customs_army/app/features/Shop/ShopPageContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return Scaffold(
            body: Builder(
              builder: (context) {
                if (currentIndex == 0) {
                  return const NewsPage();
                }
                if (currentIndex == 1) {
                  return const ShopPage();
                }
                if (currentIndex == 2) {
                  return user == null ? LoginPage() : const BagPage();
                }
                return user == null ? LoginPage() : const MyAccountPage();
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              fixedColor: Colors.indigo,
              onTap: (newIndex) {
                setState(() {
                  currentIndex = newIndex;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.feed_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '',
                ),
              ],
            ),
          );
        });
  }
}
