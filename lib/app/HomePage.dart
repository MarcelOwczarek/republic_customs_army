import 'package:flutter/material.dart';
import 'package:republic_customs_army/app/BagPage.dart';
import 'package:republic_customs_army/app/MyAccountPage.dart';
import 'package:republic_customs_army/app/NewsPage.dart';
import 'package:republic_customs_army/app/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              scale: 12,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Republic Customs Army',
              style: TextStyle(color: Colors.cyan),
            )
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          if (currrentIndex == 0) {
            return const NewsPage();
          }
          if (currrentIndex == 1) {
            return const ShopPage();
          }
          if (currrentIndex == 2) {
            return const BagPage();
          }
          return const MyAccountPage();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currrentIndex,
        fixedColor: Colors.indigo,
        onTap: (newIndex) {
          setState(() {
            currrentIndex = newIndex;
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
  }
}
