import 'package:captron/features/activities/views/activities.dart';
import 'package:flutter/material.dart';
import '../../profile/views/profile.dart';

class SwitchBottomNav with ChangeNotifier {
  int _currentNav = 0;
  final List<Map<String, dynamic>> _screens = [
    {
      'screen': const ActivitiesPage(),
    },
    {
      'screen': '',
    },
    {
      'screen': const ProfilePage(),
    },
  ];

  switchNav(int tabValue) {
    _currentNav = tabValue;
    notifyListeners();
  }

  int get currentNav => _currentNav;
  get currentScreen => _screens[_currentNav]['screen'];
  get currentScreenTitle => _screens[_currentNav]['title'];
}
