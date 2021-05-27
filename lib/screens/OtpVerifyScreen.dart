import 'package:contactsharing/screens/OtpVerifyScreen.dart';
import 'package:contactsharing/screens/ProfileInfo.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifyScreen extends StatelessWidget {
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
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Verify & Login",
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
                      "Login using OTP sent to +923062196778",
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
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,

                      fieldHeight: 35,
                      fieldWidth: 35,
                      borderWidth: 2,
                      disabledColor: Colors.white70,
                      inactiveColor: Colors.white70,
                      inactiveFillColor: Colors.grey),
                  enableActiveFill: true,
                  // errorAnimationController: errorController,
                  // controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    // setState(() {
                    //   currentText = value;
                    // });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Resend",
                        style: Styles.kNormalStyle,
                      ),
                      Text(
                        "Cancel",
                        style: Styles.kNormalStyle,
                      ),
                    ],
                  ),
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
                            "Next", style: Styles.kBoldTextStyle.copyWith(color: MyColors.whiteColor),
                            textAlign: TextAlign.center,
                          )),
                      onPressed: () {
                        Get.to(ProfileInfo());
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
