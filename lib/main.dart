import 'package:contactsharing/screens/LoginScreen.dart';
import 'package:contactsharing/screens/OtpVerifyScreen.dart';
import 'package:contactsharing/utils/Colors.dart';
import 'package:contactsharing/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

import 'screens/AllContacts/Controller/AllContactsController.dart';

void main() {
  Get.put(AllContactsController());
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // new Future.delayed(const Duration(seconds: 2))
    //     .then((value) => Get.offAll(LoginScreen()));
    // return Scaffold(
    //   body: Container(
    //     color: MyColors.primaryColor,
    //     child: Center(
    //       child: Text(
    //         "Contact Sharing",
    //         style: Styles.kBoldTextStyle.copyWith(color: Colors.white),
    //       ),
    //     ),
    //   ),
    //);

    return LoginScreen();
  }
}
