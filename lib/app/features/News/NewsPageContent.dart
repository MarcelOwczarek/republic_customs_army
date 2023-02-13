import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('news').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Wystąpił nieoczekiwany błąd'),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.indigo,
              ),
            ),
          );
        }
        final documents = snapshot.data!.docs;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Center(
              child: Text(
                'Aktualności',
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
          ),
          body: ListView(
            children: [
              for (final document in documents) ...[
                CustomContainer(document['title']),
              ],
            ],
          ),
        );
      },
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.indigo),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.lato(),
        ),
      ),
    );
  }
}
