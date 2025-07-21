import 'package:flutter/material.dart';
import 'drawer_screen.dart';
import 'friends_family_screen.dart';
import 'add_friends_family_screen.dart';

class DrawerRoutes {
  static const String drawer = '/drawer';
  static const String friendsFamily = '/friendsFamily';
  static const String addFriendsFamily = '/addFriendsFamily';

  static Map<String, WidgetBuilder> routes = {
    drawer: (context) => DrawerScreen(),
    friendsFamily: (context) => FriendsFamilyScreen(),
    addFriendsFamily: (context) => AddFriendsFamilyScreen(),
  };
}