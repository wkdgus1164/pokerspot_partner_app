import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/item_contents.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/item_time.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: '알림 목록'),
      body: SingleChildScrollView(
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
