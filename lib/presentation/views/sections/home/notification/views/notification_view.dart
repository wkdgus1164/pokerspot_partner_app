import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/item_contents.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/item_time.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('알림 목록'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NotificationItemTime(),
            NotificationItemContents(),
            NotificationItemContents(),
            NotificationItemContents(),
            NotificationItemTime(),
            NotificationItemContents(),
            NotificationItemContents(),
            NotificationItemContents(),
            NotificationItemTime(),
            NotificationItemContents(),
            NotificationItemContents(),
            NotificationItemContents(),
          ],
        ),
      ),
    );
  }
}
