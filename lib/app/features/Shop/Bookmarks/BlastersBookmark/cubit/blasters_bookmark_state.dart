part of 'blasters_bookmark_cubit.dart';

@immutable
class BlastersBookmarkState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingErrorOcurred;
  final bool removingErrorOcurred;

  const BlastersBookmarkState({
    this.items,
    this.loadingErrorOcurred = false,
    this.removingErrorOcurred = false,
  });
}
