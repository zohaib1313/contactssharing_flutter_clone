import 'package:contacts_service/contacts_service.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AllContactsWidgets {
  static getContactRow({double x, double y, Contact contact}) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(top: x * 0.02, bottom: x * 0.02),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(x * 0.01),
              child: Container(
                child: Image.asset("assets/check_icon.png"),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: x * 0.07,
                    backgroundImage: AssetImage("assets/place_holder.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: x * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contact.displayName,
                          style: Styles.kBoldTextStyle
                              .copyWith(color: MyColors.blackColor),
                        ),
                        Text(
                          contact.phones.first.value,
                          style: Styles.kBoldTextStyle
                              .copyWith(color: MyColors.grayHintColor)
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
