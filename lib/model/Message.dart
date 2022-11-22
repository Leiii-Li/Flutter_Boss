import 'dart:convert';
import 'package:meta/meta.dart';

class Message {
  final String avatar;
  final String name;
  final String company;
  final String position;
  final String msg;

  Message({required this.avatar,
    required this.name,
    required this.company,
    required this.position,
    required this.msg});

  static List<Message> fromJson(String json) {
    List<Message> messageList = [];

    JsonDecoder decoder = const JsonDecoder();
    var mapData = decoder.convert(json);

    mapData['list'].forEach((obj) {
      Message message = Message(
        avatar: obj['avatar'],
        name: obj['name'],
        company: obj['company'],
        position: obj['position'],
        msg: obj['msg'],
      );
      messageList.add(message);
    });

    return messageList;
  }
}
