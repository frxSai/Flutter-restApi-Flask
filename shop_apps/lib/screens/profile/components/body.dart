import 'package:flutter/material.dart';
import 'package:shop_apps/constants.dart';
import 'package:shop_apps/profilepage.dart';
import 'package:shop_apps/screens/sign_in/sign_in_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              ),
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              int count = 0;
              Navigator.of(context).popUntil((_) => count++ >= 3);
              // Navigator.popUntil(context, ModalRoute.withName('/sign_in_screen'));
              // Navigator.of(context).popUntil((route) {
              //   if (route.settings.name != "/sign_in") return false;
              //   return true;
              // });
            },
          ),
        ],
      ),
    );
  }
}
