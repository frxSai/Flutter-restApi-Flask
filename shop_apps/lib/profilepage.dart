import 'package:flutter/material.dart';
import 'package:shop_apps/components/default_button.dart';
import 'package:shop_apps/constants.dart';
import 'package:shop_apps/screens/home/home_screen.dart';
import 'package:shop_apps/screens/profile/components/profile_menu.dart';
import 'package:shop_apps/screens/profile/components/profile_pic.dart';
import 'package:shop_apps/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              ProfilePic(),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration: BoxDecoration(
                  color: border1,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                    ),
                    Text(
                      'Name  ',
                      style: MyConstant().fontstyle_1(),
                    ),
                    Text(
                      '  Asadawut Sawaengsri',
                      style: MyConstant().fontstyle_2(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration: BoxDecoration(
                  color: border1,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                    ),
                    Text(
                      'Email  ',
                      style: MyConstant().fontstyle_1(),
                    ),
                    Text(
                      '  s127flutter141@gmail.com',
                      style: MyConstant().fontstyle_2(),
                    ),
                  ],
                ),
              ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const Align(
              //       alignment: Alignment.centerRight,
              //     ),
              //     const SizedBox(
              //       height: 15.0,
              //     ),
              //     Text(
              //       'EMAIL',
              //       style: MyConstant().fontstyle_1(),
              //     ),
              //     const SizedBox(
              //       height: 5.0,
              //     ),
              //     Text(
              //       'eed_flutter141@gmail.com',
              //       style: MyConstant().fontstyle_2(),
              //     ),
              //     const SizedBox(
              //       height: 15.0,
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20),
              DefaultButton(
                text: "Save",
                press: () {
                  int count = 0;
                  Navigator.of(context).popUntil((_) => count++ >= 2);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
