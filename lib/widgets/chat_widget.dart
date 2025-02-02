import 'package:flutter/material.dart';
import 'package:whatsapp_ui/model/chat.dart';
import 'package:whatsapp_ui/theme.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = chatList[index];
          return ListTile(
            leading: Image.network(chat.image),
            title: Text(
              chat.name,
              style: customTextStyle,
            ),
            subtitle: Text(
              chat.mostRecentMessage,
              style: const TextStyle(color: Colors.black45, fontSize: 16),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                chat.messageDate,
                style: const TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          );
        });
  }
}
