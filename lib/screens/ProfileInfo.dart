import 'package:contactsharing/screens/HomeScreen.dart';
import 'package:contactsharing/screens/OtpVerifyScreen.dart';
import 'package:contactsharing/screens/ProfileInfo.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Profile Info",
                          style: Styles.kBoldTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: MyColors.primaryColor,
                      maxRadius: 100,
                      minRadius: 100,
                      backgroundImage: AssetImage("place_holder.png"),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: CircleAvatar(
                            backgroundColor: MyColors.primaryColor,
                            maxRadius: 16,
                            minRadius: 16,
                            child: Icon(Icons.camera),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: MyColors.primaryColor,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "User name",
                          ),
                          style: Styles.kBoldTextStyle,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(14),
                          child: Text(
                            "Save",
                            textAlign: TextAlign.center,
                            style: Styles.kBoldTextStyle
                                .copyWith(color: MyColors.whiteColor),
                          )),
                      onPressed: () {
                        Get.to(HomeScreen());
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
