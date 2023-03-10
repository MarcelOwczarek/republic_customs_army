// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'accessories_bookmark_state.dart';

class AccessoriesBookmarkCubit extends Cubit<AccessoriesBookmarkState> {
  AccessoriesBookmarkCubit() : super(const AccessoriesBookmarkState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription =
        FirebaseFirestore.instance.collection('accessories').snapshots().listen(
      (items) {
        emit(AccessoriesBookmarkState(items: items));
      },
    )..onError(
            (error) {
              emit(const AccessoriesBookmarkState(loadingErrorOcurred: true));
            },
          );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
