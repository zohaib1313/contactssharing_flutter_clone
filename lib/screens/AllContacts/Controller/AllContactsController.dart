import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';

class AllContactsController extends GetxController {
  var allContactsList = List<Contact>.empty().obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    allContactsList.clear();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getAllContacts() async {
    allContactsList.clear();
    isLoading.value = true;
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission == PermissionStatus.granted) {
      final Iterable<Contact> contacts = await ContactsService.getContacts();
      allContactsList.addAll(contacts);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      await [Permission.contacts].request();
      getAllContacts();
    }
  }
}
