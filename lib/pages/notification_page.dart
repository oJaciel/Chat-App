import 'package:chat/core/services/notification/chat_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<ChatNotificationService>(context);
    final items = service.items;
    return Scaffold(
      appBar: AppBar(title: Text('Minhas Notificações')),
      body: ListView.builder(
        itemBuilder:
            (ctx, i) => ListTile(
              title: Text(items[i].title),
              subtitle: Text(items[i].body),
              onTap: () => service.remove(i),
              
            ),
        itemCount: service.itemsCount,
      ),
    );
  }
}
