import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turing_zp_demo/models/graphql/simple_notifications.graphql.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState());

  List<QuerySimpleNotificationssimpleNotificationsnotifications>
      notificationsList = [];

  bool canAdd = true;

  void setLocale(Locale locale) {
    emit(state.copyWith(
      locale: locale,
    ));
  }
}
