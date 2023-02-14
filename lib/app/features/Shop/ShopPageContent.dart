import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            isScrollable: true,
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
            return const FirstCategory();
          }
          if (currentIndex == 1) {
            return const SecondCategory();
          }
          if (currentIndex == 2) {
            return const ThirdCategory();
          }

          return const FourCategory();
        }),
      ),
    );
  }
}

class FirstCategory extends StatelessWidget {
  const FirstCategory({
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
                        image: AssetImage('images/501_legion.png'),
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

class SecondCategory extends StatelessWidget {
  const SecondCategory({
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
                        image: AssetImage('images/187_th.png'),
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

class ThirdCategory extends StatelessWidget {
  const ThirdCategory({
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

class FourCategory extends StatelessWidget {
  const FourCategory({
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
                        image: AssetImage('images/logo.png'),
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
