import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:republic_customs_army/app/features/Shop/Bookmarks/AccessoriesBookmark/AccessoriesBookmark.dart';
import 'package:republic_customs_army/app/features/Shop/Bookmarks/BlastersBookmark/BlastersBookmark.dart';
import 'package:republic_customs_army/app/features/Shop/Bookmarks/DecalsBookmark/DecalsBookmark.dart';
import 'package:republic_customs_army/app/features/Shop/Bookmarks/HelmetsBookmark/HelmetsBookmark.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    super.key,
  });

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text(
              'Nasze produkty ',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
          ),
          bottom: TabBar(
            //isScrollable: true,
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
                text: 'Akcesoria',
              ),
              Tab(
                text: 'Blastery',
              ),
              Tab(
                text: 'Hełmy',
              ),
              Tab(
                text: 'Kalkomanie',
              ),
            ],
          ),
        ),
        body: Builder(builder: (context) {
          if (currentIndex == 0) {
            return const AccessoriesBookmark();
          }
          if (currentIndex == 1) {
            return const BlastersBookmark();
          }
          if (currentIndex == 2) {
            return const HelmetsBookmark();
          }

          return const DecalsBookmark();
        }),
      ),
    );
  }
}
