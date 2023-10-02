import 'package:flutter/material.dart';
class FirebaseNotifications extends StatefulWidget {
  const FirebaseNotifications({super.key});

  @override
  State<FirebaseNotifications> createState() => _FirebaseNotificationsState();
}

class _FirebaseNotificationsState extends State<FirebaseNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
    );
  }
}
