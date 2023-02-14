import 'package:flutter/material.dart';

class HelmetsBookmark extends StatelessWidget {
  const HelmetsBookmark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20),
      children: [
        Container(
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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/mystery_box.jpg'),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    height: 160,
                    child: Align(
                      alignment: const FractionalOffset(1.03, -0.03),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border_outlined,
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
                        child: const Text(
                          ' 35 zł ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
