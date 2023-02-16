// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'helmets_bookmark_state.dart';

class HelmetsBookmarkCubit extends Cubit<HelmetsBookmarkState> {
  HelmetsBookmarkCubit() : super(const HelmetsBookmarkState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription =
        FirebaseFirestore.instance.collection('helmets').snapshots().listen(
      (items) {
        emit(HelmetsBookmarkState(items: items));
      },
    )..onError(
            (error) {
              emit(const HelmetsBookmarkState(loadingErrorOcurred: true));
            },
          );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
