import 'package:flutter/material.dart';
import 'package:whatsapp_ui/theme.dart';
import 'package:whatsapp_ui/widgets/call_widget.dart';
import 'package:whatsapp_ui/widgets/chat_widget.dart';
import 'package:whatsapp_ui/widgets/status_widget.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({super.key});

  @override
  State<WhatsappPage> createState() => _WhatsappPageState();
}

class _WhatsappPageState extends State<WhatsappPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  var tabs = const [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: 'CHATS',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: whatsAppGreen,
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Icon(Icons.camera_alt),
          ),
          ChatWidget(),
          StatusWidget(),
          CallWidget(),
        ],
      ),
    );
  }
}
