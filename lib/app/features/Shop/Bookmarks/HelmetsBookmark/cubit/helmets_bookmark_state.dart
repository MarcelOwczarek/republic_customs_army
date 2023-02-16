part of 'helmets_bookmark_cubit.dart';

@immutable
class HelmetsBookmarkState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingErrorOcurred;
  final bool removingErrorOcurred;

  const HelmetsBookmarkState({
    this.items,
    this.loadingErrorOcurred = false,
    this.removingErrorOcurred = false,
  });
}
