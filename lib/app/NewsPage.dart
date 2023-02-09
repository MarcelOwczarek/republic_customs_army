import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [CustomContainer()],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

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
      child: const Center(
        child: Text('Info z Firebase'),
      ),
    );
  }
}
