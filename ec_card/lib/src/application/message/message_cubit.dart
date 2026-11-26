import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/messages/model/message_body.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/domain/education/education_repo.dart';
import 'package:ec_card_app/src/domain/messages/message_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'message_state.dart';
part 'message_cubit.freezed.dart';

@injectable
class MessageCubit extends Cubit<MessageState> {
  MessageCubit(this.messageRepo, this.educationRepo)
      : super(MessageState.initial());

  final MessageRepository messageRepo;
  final EducationRepository educationRepo;

  /// Finds the link a weblink notification is about.
  ///
  /// The gateway has no route for a single weblink — asking it for a video
  /// with that id is refused — so the shared links are fetched and the one
  /// the notification names is picked out. A link that is no longer shared
  /// leaves [MessageState.notificationWeblink] empty, and the Weblinks tab is
  /// opened instead.
  Future<void> getWeblinkFromNotification({
    required MessageBody message,
  }) async {
    emit(state.copyWith(
      isWeblinkNotificationResolved: false,
      notificationWeblink: null,
    ));

    final educationId = '${message.extraParams['educationId'] ?? ''}';
    final weblinks = await educationRepo.getEducationWeblinks();

    if (isClosed) return;

    final match = weblinks.fold<WeblinkItem?>(
      (failure) {
        appLog('-------- Message Cubit: weblinks could not be fetched --------');
        return null;
      },
      (list) => findWeblinkById(list, educationId),
    );

    emit(state.copyWith(
      isWeblinkNotificationResolved: true,
      notificationWeblink: match,
    ));
  }

  void getListOfNotifications() async {
    emit(state.copyWith(
      isLoading: true,
      educationItemFetchFailureOrSuccessOption: none(),
      navigateToEducationItemDetails: false,
    ));

    appLog("-------- Message Cubit: Get notification list --------");

    final list = await messageRepo.getNotificationsList();

    list.fold((l) {
      emit(state.copyWith(isLoading: false));
    }, (r) {
      final notificationMap = Map<String, List<dynamic>>.from(r);

      emit(
        state.copyWith(
          isLoading: false,
          notificationsList: notificationMap,
        ),
      );
    });
  }

  void markNotificationAsRead(
      String selectedKey, MessageBody selectedMessage) async {
    // final result =
    await messageRepo
        .markNotificationAsRead(selectedMessage.notificationId)
        .then((value) {
      value.fold((l) => null, (r) {
        updateNotificationList(selectedKey, selectedMessage);
      });
    });
    // result.fold((l) => null, (r) => null);
  }

  void updateNotificationList(
      String selectedKey, MessageBody selectedMessage) async {
    Map<String, List<dynamic>> previousNotificationData =
        Map<String, List<dynamic>>.from(state.notificationsList);

    List<dynamic> selectedKeyNotification =
        previousNotificationData[selectedKey]!;

    List<MessageBody> convertedList =
        convertIntoListOfMessageBody(selectedKeyNotification)
            .map((e) => e == selectedMessage ? e.copyWith(isRead: true) : e)
            .toList();

    final convertedMap = convertMessageListToList(convertedList);

    previousNotificationData[selectedKey] = convertedMap;

    emit(state.copyWith(
      notificationsList: previousNotificationData,
      educationItemFetchFailureOrSuccessOption: none(),
      navigateToEducationItemDetails: false,
    ));
  }

  void getEducationItemFromNotification({
    required MessageBody message,
  }) async {
    // appLog(
    //     "SELCTED MESSAGE :${message.extraParams} TYPE: ${message.extraParams.runtimeType}");
    emit(state.copyWith(
      // isLoading: true,
      educationItemFetchFailureOrSuccessOption: none(),
    ));
    final String messageType =
        message.type == "educationDocument" ? "document" : "video";

    final String educationId = message.extraParams['educationId'];

    await messageRepo
        .viewSingleEducationItem(messageType, educationId)
        .then((value) => value.fold((l) {
              emit(state.copyWith(
                  // isLoading: false,
                  educationItem: null,
                  navigateToEducationItemDetails: false,
                  educationItemFetchFailureOrSuccessOption: some(left(l))));
            }, (r) {
              // appLog("FETCHED EDUCATION ITEM: $r");
              emit(state.copyWith(
                // isLoading: false,
                educationItemFetchFailureOrSuccessOption: some(right(r)),
                navigateToEducationItemDetails: true,
                // isEducationItemFetched: true,
                educationItem: r,
              ));
            }));

    // result.fold((l) {
    //   emit(state.copyWith(
    //       isLoading: false,
    //       educationItemFetchFailureOrSuccessOption: some(left(l))));
    // }, (r) {
    //   appLog("FETCHED EDUCATION ITEM: $r");
    //   emit(state.copyWith(
    //     isLoading: false,
    //     educationItemFetchFailureOrSuccessOption: some(right(r)),
    //     // isEducationItemFetched: true,
    //     // educationItem: r,
    //   ));
    // });
  }
}

/// The shared link with this id, or nothing when it is no longer shared.
WeblinkItem? findWeblinkById(List<WeblinkItem> weblinks, String educationId) {
  if (educationId.isEmpty) return null;

  for (final weblink in weblinks) {
    if (weblink.educationId == educationId) return weblink;
  }
  return null;
}
