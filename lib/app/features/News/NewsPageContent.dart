// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:republic_customs_army/app/widgets/NewsContainer.dart';

import 'cubit/news_page_cubit.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsPageCubit()..start(),
      child: BlocBuilder<NewsPageCubit, NewsPageState>(
        builder: (context, state) {
          final documents = state.items?.docs;
          if (documents == null) {
            return const SizedBox.shrink(
              child: Text('no siema'),
            );
          } else {
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
                    NewsContainer(
                      document: document,
                    ),
                  ],
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
