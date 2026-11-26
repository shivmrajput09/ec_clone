// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'message_body.freezed.dart';

@freezed
class MessageBody with _$MessageBody {
  const factory MessageBody({
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'isRead') @Default(false) bool isRead,
    @JsonKey(name: 'userId') @Default('') String userId,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'body') @Default('') String body,
    @JsonKey(name: 'extraParams') @Default({}) Map<String, dynamic> extraParams,
    @JsonKey(name: 'notificationReportId')
    @Default('')
        String notificationReportId,
    @JsonKey(name: 'notificationId') @Default('') String notificationId,
    @JsonKey(name: 'created') @Default('') String created,
    @JsonKey(name: 'lastModified') @Default('') String lastModified,
    @JsonKey(name: 'summary') @Default('') String summary,
    @JsonKey(name: 'createdDate') @Default('') String createdDate,
  }) = _MessageBody;
}

MessageBody convertIntoMessageBody(dynamic message) {
  // appLog("RUNTYPE TYPE: ${message['extraParams'].runtimeType}");
  return MessageBody(
    type: message['type'] ?? '',
    isRead: message['isRead'] ?? false,
    userId: message['userId'] ?? '',
    title: message['title'] ?? '',
    body: message['body'] ?? '',
    extraParams: message['extraParams'] != null
        ? Map<String, dynamic>.from(message['extraParams'] as Map)
        : {},
    notificationReportId: message['notificationReportId'] ?? '',
    notificationId: message['notificationId'] ?? '',
    created: message['created'] ?? '',
    lastModified: message['lastModified'] ?? '',
    summary: message['summary'] ?? '',
    createdDate: message['createdDate'] ?? '',
  );
}

Map<String, dynamic> convertMessageBodyToJson(MessageBody message) {
  return {
    "type": message.type,
    "isRead": message.isRead,
    "userId": message.userId,
    "title": message.title,
    "body": message.body,
    "extraParams": message.extraParams,
    "notificationReportId": message.notificationReportId,
    "notificationId": message.notificationId,
    "created": message.created,
    "lastModified": message.lastModified,
    "summary": message.summary,
    "createdDate": message.createdDate,
  };
}

List<MessageBody> convertIntoListOfMessageBody(List<dynamic> list) {
  List<MessageBody> convertedList = [];

  Future.forEach(list, (element) {
    convertedList.add(convertIntoMessageBody(element));
  });

  return convertedList;
}

List<dynamic> convertMessageListToList(List<MessageBody> inputList) {
  List<dynamic> resultList = [];
  Future.forEach(inputList, (MessageBody element) {
    resultList.add(convertMessageBodyToJson(element));
  });

  return resultList;
}
