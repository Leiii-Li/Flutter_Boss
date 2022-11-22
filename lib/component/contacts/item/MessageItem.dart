import 'package:boss/model/Message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final Message _Message;

  const MessageItem(this._Message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 5.0,
        right: 5.0,
        bottom: 3.0,
      ),
      child: Card(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 0, right: 15.0, bottom: 0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(_Message.avatar),
                )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        _Message.name,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    Text(
                      _Message.position,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(_Message.msg),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
