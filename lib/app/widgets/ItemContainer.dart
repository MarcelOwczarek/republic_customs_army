// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.document,
  });

  final QueryDocumentSnapshot<Map<String, dynamic>> document;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: 160,
                height: 160,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      document['tile_imageurl'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 500,
                                  height: 600,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[900],
                                  ),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        height: 200,
                                        width: 300,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey[700],
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              document['product_imageurl'],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(document['product_name'],
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 17)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 230,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32))),
                                        child: Text(
                                          'Włóż do torby',
                                          style:
                                              GoogleFonts.raleway(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Szczegóły produktu:',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        document['product_description'],
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ),
                                  ]),
                                ),
                                Positioned(
                                  bottom: 10,
                                  child: IconButton(
                                    icon: const Icon(Icons.cancel_outlined),
                                    color: Colors.redAccent,
                                    iconSize: 40,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
              SizedBox(
                width: 160,
                height: 160,
                child: Align(
                  alignment: const FractionalOffset(1.03, -0.03),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 160,
                height: 160,
                child: Align(
                  alignment: const FractionalOffset(0.07, 0.93),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.indigo,
                    child: Text(
                      document['tile_text'],
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
