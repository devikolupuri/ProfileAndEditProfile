import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart'as badges;

class NotificationBadge extends StatelessWidget {
  final int notificationCount;

  const NotificationBadge({Key? key, required this.notificationCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: Text(
        notificationCount.toString(),
        style: const TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 7,
        ),
      ),
      
      position: BadgePosition.topEnd(top: 7, end: 8),
      child: IconButton(
        alignment: Alignment.topRight,
        icon: const Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle notifications icon pressed
        },
      ),
    );
  }
}
