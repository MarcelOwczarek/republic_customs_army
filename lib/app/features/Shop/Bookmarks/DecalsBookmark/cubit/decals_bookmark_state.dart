part of 'decals_bookmark_cubit.dart';

@immutable
class DecalsBookmarkState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingErrorOcurred;
  final bool removingErrorOcurred;

  const DecalsBookmarkState({
    this.items,
    this.loadingErrorOcurred = false,
    this.removingErrorOcurred = false,
  });
}
