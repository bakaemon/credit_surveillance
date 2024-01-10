import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String type,
    String? title,
    String? body,
    String? payload,
  }) = _Message;


  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

extension MessageX on Message {
  Map<String, dynamic> payloadJson() => json.decode(payload ?? '{}');
}
