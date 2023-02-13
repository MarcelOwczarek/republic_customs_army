import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BagPage extends StatelessWidget {
  const BagPage({
    super.key,
  });

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
          body: Center(
            child: Text(
              'Nic tu nie ma 😭',
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          )),
    );
  }
}
