// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'news_page_state.dart';

class NewsPageCubit extends Cubit<NewsPageState> {
  NewsPageCubit() : super(const NewsPageState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription = FirebaseFirestore.instance
        .collection('news')
        .snapshots()
        .listen((items) {
      emit(NewsPageState(items: items));
    })
      ..onError(
        (error) {
          emit(const NewsPageState(loadingErrorOcurred: true));
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
