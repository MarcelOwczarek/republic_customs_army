import 'package:flutter/material.dart';

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
            return const Center(
              child: Text('Zero'),
            );
          }
          if (currrentIndex == 1) {
            return const Center(
              child: Text('Jeden'),
            );
          }
          if (currrentIndex == 2) {
            return const Center(
              child: Text('Dwa'),
            );
          }
          return const Center(
            child: Text('Trzy'),
          );
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
