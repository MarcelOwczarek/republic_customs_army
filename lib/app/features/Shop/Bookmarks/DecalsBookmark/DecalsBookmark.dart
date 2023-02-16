import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:republic_customs_army/app/features/Shop/Bookmarks/DecalsBookmark/cubit/decals_bookmark_cubit.dart';
import 'package:republic_customs_army/app/widgets/ItemContainer.dart';

class DecalsBookmark extends StatelessWidget {
  const DecalsBookmark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DecalsBookmarkCubit()..start(),
      child: BlocBuilder<DecalsBookmarkCubit, DecalsBookmarkState>(
        builder: (context, state) {
          final documents = state.items?.docs;
          if (documents == null) {
            return const SizedBox.shrink();
          } else {
            return GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              children: [
                for (final document in documents) ...[
                  ItemContainer(
                    document: document,
                  ),
                ],
              ],
            );
          }
        },
      ),
    );
  }
}
