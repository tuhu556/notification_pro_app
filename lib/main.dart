import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notification_pro_app/home_page.dart';

void main() {
  AwesomeNotifications()
      .initialize('resource://drawable/res_notification_app_icon', [
    NotificationChannel(
      channelKey: 'basic_channel',
      channelName: 'Basic Notification',
      channelDescription: '',
      defaultColor: Colors.teal,
      importance: NotificationImportance.High,
      channelShowBadge: true,
    ),
    NotificationChannel(
      channelKey: 'scheduled_channel',
      channelName: 'Scheduled Notification',
      channelDescription: '',
      defaultColor: Colors.teal,
      importance: NotificationImportance.High,
      locked: true,
    )
  ]);
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.tealAccent,
      ),
      title: 'Green Thumbs',
      home: HomePage(),
    );
  }
}
