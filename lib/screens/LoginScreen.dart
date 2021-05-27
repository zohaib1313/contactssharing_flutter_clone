import 'package:contactsharing/screens/OtpVerifyScreen.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
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
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: MyColors.primaryColor,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Enter Mobile Number",
                          style: Styles.kBoldTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "We need your Mobile number for login",
                      style: Styles.kNormalStyle,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(
                    "assets/group_19.png",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("contry code"),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter phone number",
                        ),
                        keyboardType: TextInputType.phone,
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
                          "Next",
                          textAlign: TextAlign.center,
                          style: Styles.kBoldTextStyle.copyWith(color: MyColors.whiteColor),
                        ),
                      ),
                      onPressed: () {
                        Get.to(OtpVerifyScreen());
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
