import 'package:boss/component/contacts/item/MessageItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../model/Message.dart';

class ContactsTab extends StatefulWidget {
  const ContactsTab({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContactsState();
  }
}

class ContactsState extends State<ContactsTab> {
  List<Message> _MessageList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _MessageList = fetchData();
    });
  }

  List<Message> fetchData() {
    List<Message> message = Message.fromJson("""
      {
        "list":[
          {
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          },{
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          },{
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          },{
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          },{
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          },{
            "avatar":"https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
            "name":"蚂蚁金服",
            "company":"B轮",
            "position":"25k-45k",
            "msg":"Claire",
            "title":"HR"
          }
        ]
      }
      """);
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "消息",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: _MessageList.length,
        itemBuilder: buildContactsItem,
      ),
    );
  }

  Widget buildContactsItem(BuildContext context, int index) {
    Message message = _MessageList[index];
    var jobItem = InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => const AlertDialog(
                  content: Text("敬请期待", style: TextStyle(fontSize: 20.0))));
        },
        child: MessageItem(message));
    return jobItem;
  }
}
