// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    Key? key,
    required this.document,
  }) : super(key: key);

  final QueryDocumentSnapshot<Map<String, dynamic>> document;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Container(
        margin: const EdgeInsets.only(top: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 340,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[900],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 320,
                            height: 190,
                            padding: const EdgeInsets.all(0),
                            margin: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage(document['news_imageurl']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  document['news_welcome'],
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                document['news_description'],
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  document['news_signature'],
                                  style: GoogleFonts.zeyada(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
