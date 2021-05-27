import 'package:contactsharing/screens/AllContacts/Controller/AllContactsController.dart';
import 'package:contactsharing/screens/AllContacts/UI/AllContactsWidgets.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllContacts extends GetView<AllContactsController> {
  @override
  Widget build(BuildContext context) {
    controller.getAllContacts();
    final x = Get.width;
    final y = Get.height;
    return Scaffold(
      body: Column(
        children: [
          header(x, y, context),
          Expanded(
            child: Container(
                child: Obx(
              () => ListView.builder(
                itemCount: controller.allContactsList.length,
                itemBuilder: (context, index) {
                  return AllContactsWidgets.getContactRow(
                      x: x, y: y, contact: controller.allContactsList[index]);
                },
              ),
            )),
          ),
        ],
      ),
      floatingActionButton: ClipOval(
        child: Material(
          elevation: 20,
          child: Image.asset("assets/fab_icon.png"),
        ),
      ),
    );
  }

  header(x, y, context) {
    return Padding(
      padding: EdgeInsets.all(x * 0.02),
      child: Row(
        children: [
          Expanded(
              child: Text(
            "Select Contacts",
            style: Styles.kBoldTextStyle.copyWith(color: MyColors.blackColor),
          )),
          GestureDetector(
              onTap: () async {
                var result = await showSearch<String>(
                  context: context,
                  delegate: CustomDelegate(),
                );
              },
              child: Image.asset("assets/icon_search.png")),
        ],
      ),
    );
  }
}

class CustomDelegate<T> extends SearchDelegate<T> {
  List<String> data = [];

  @override
  List<Widget> buildActions(BuildContext context) =>
      [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      icon: Icon(Icons.chevron_left), onPressed: () => close(context, null));

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    var listToShow;
    if (query.isNotEmpty)
      listToShow =
          data.where((e) => e.contains(query) && e.startsWith(query)).toList();
    else
      listToShow = data;

    return ListView.builder(
      itemCount: listToShow.length,
      itemBuilder: (_, i) {
        var noun = listToShow[i];
        return ListTile(
          title: Text(noun),
          onTap: () => close(context, noun),
        );
      },
    );
  }
}
