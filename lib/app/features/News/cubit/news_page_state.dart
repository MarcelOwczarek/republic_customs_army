part of 'news_page_cubit.dart';

@immutable
class NewsPageState {
  final QuerySnapshot<Map<String, dynamic>>? items;
  final bool loadingErrorOcurred;
  final bool removingErrorOcurred;

  const NewsPageState({
    this.items,
    this.loadingErrorOcurred = false,
    this.removingErrorOcurred = false,
  });
}
