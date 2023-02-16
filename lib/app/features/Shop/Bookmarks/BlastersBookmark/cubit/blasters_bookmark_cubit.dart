// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'blasters_bookmark_state.dart';

class BlastersBookmarkCubit extends Cubit<BlastersBookmarkState> {
  BlastersBookmarkCubit() : super(const BlastersBookmarkState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription =
        FirebaseFirestore.instance.collection('blasters').snapshots().listen(
      (items) {
        emit(BlastersBookmarkState(items: items));
      },
    )..onError(
            (error) {
              emit(const BlastersBookmarkState(loadingErrorOcurred: true));
            },
          );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
