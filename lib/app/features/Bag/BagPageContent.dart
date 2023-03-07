// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:republic_customs_army/app/features/Bag/Bookmarks/FavoriteBookmark.dart';
import 'package:republic_customs_army/app/features/Bag/Bookmarks/OrdersBookmark.dart';

class BagPage extends StatefulWidget {
  const BagPage({
    super.key,
  });

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text(
              'Twoja torba',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
          ),
          bottom: TabBar(
              onTap: (newIndex) {
                setState(() {
                  currentIndex = newIndex;
                });
              },
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.indigoAccent,
              ),
              tabs: const [
                Tab(
                  text: 'Obserwowane',
                ),
                Tab(
                  text: 'Zamówienia',
                ),
              ]),
        ),
        body: Builder(
          builder: (context) {
            if (currentIndex == 0) {
              return const FavoriteBookmark();
            }
            return const OrdersBookmark();
          },
        ),
      ),
    );
  }
}
