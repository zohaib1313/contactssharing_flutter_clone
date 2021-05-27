import 'package:contactsharing/screens/History.dart';
import 'package:contactsharing/screens/ProfileUpdate.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:get/get.dart';

import 'AllContacts/UI/AllContacts.dart';
import 'Notifications.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0.obs;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Obx(() => getScreen(_selectedIndex.value)),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavyBar(
            selectedIndex: _selectedIndex.value,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) {
              _selectedIndex.value = index;
            },
            items: [
              BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Contacts'),
                activeColor: MyColors.primaryColor,
              ),
              BottomNavyBarItem(
                  icon: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  activeColor: MyColors.primaryColor),
              BottomNavyBarItem(
                  icon: Icon(Icons.history),
                  title: Text('History'),
                  activeColor:MyColors.primaryColor),
              BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
                  activeColor:MyColors.primaryColor),
            ],
          ),
        ),
      ),
    );
  }
}

getScreen(int value) {
  switch (value) {
    case 0:
      return AllContacts();
      break;
    case 1:
      return Notifications();
      break;
    case 2:
      return History();
      break;
    case 3:
      return ProfileUpdate();
      break;
  }
}
