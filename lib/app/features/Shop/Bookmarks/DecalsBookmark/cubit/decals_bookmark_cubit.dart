// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'decals_bookmark_state.dart';

class DecalsBookmarkCubit extends Cubit<DecalsBookmarkState> {
  DecalsBookmarkCubit() : super(const DecalsBookmarkState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription =
        FirebaseFirestore.instance.collection('decals').snapshots().listen(
      (items) {
        emit(DecalsBookmarkState(items: items));
      },
    )..onError(
            (error) {
              emit(const DecalsBookmarkState(loadingErrorOcurred: true));
            },
          );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
