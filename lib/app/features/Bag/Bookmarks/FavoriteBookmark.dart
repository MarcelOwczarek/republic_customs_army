import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteBookmark extends StatelessWidget {
  const FavoriteBookmark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Jeszcze nie dodałeś nic do ulubionych 😭',
        style: GoogleFonts.poppins(fontSize: 16),
      ),
    );
  }
}
