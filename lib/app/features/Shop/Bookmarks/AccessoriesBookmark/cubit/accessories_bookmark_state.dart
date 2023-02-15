part of 'accessories_bookmark_cubit.dart';

@immutable
class AccessoriesBookmarkState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingErrorOcurred;
  final bool removingErrorOcurred;

  const AccessoriesBookmarkState({
    this.items,
    this.loadingErrorOcurred = false,
    this.removingErrorOcurred = false,
  });
}
