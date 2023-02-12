import 'package:flutter/material.dart';
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
  var needAccount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex == 1
          ? null
          : AppBar(
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
          if (currentIndex == 0) {
            return const NewsPage();
          }
          if (currentIndex == 1) {
            return const ShopPage();
          }
          if (currentIndex == 2) {
            return needAccount == true ? const LoginPage() : const BagPage();
          }
          return needAccount == true
              ? const LoginPage()
              : const MyAccountPage();
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
  }
}
