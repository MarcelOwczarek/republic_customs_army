import 'package:flutter/material.dart';
import 'package:republic_customs_army/app/SecondLoginPage.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('images/501_legion.png'),
            ),
          ),
          child: GestureDetector(
            onTap: () {},
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('images/187_th.png'),
            ),
          ),
          child: GestureDetector(
            onTap: () {},
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('images/mystery_box.jpg'),
            ),
          ),
          child: GestureDetector(
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
