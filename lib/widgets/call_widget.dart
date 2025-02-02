import 'package:flutter/material.dart';
import 'package:whatsapp_ui/model/status.dart';
import 'package:whatsapp_ui/theme.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (BuildContext context, int index) {
          final status = statusList[index];
          return ListTile(
            leading: const Icon(
              Icons.account_circle_rounded,
              size: 58,
              color: Colors.black,
            ),
            title: Text(
              status.name,
              style: customTextStyle,
            ),
            subtitle: Text(
              status.statusDate,
              style: const TextStyle(color: Colors.black45, fontSize: 16),
            ),
            trailing: Icon(
              Icons.phone,
              color: Colors.greenAccent[400],
            ),
          );
        });
  }
}
