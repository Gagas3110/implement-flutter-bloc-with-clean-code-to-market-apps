import 'package:flutter/material.dart';
import 'package:news_app/helper/custom_button.dart';
import 'package:news_app/helper/extension.dart';
import 'package:news_app/helper/modal_bottom_login.dart';
import 'package:sizer/sizer.dart';

class FirstUi extends StatefulWidget {
  const FirstUi({super.key});

  @override
  State<FirstUi> createState() => _FirstUiState();
}

class _FirstUiState extends State<FirstUi> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: height * 0.2),
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.newspaper,
              size: 15.h,
            ),
            SizedBox(
              height: 19.h,
            ),
            Text(
              'Find all about \n Hot News',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            CustomButtonWithFreeColor(
              widthrectang: 3.0,
              colorRectang: Colors.black,
              buttonHeight: context.deviceHeight(0.06375),
              buttonWidth: context.deviceWidth(0.3416666666666667),
              radius: 10,
              fontWeight: FontWeight.w500,
              fontSizel: context.scaleFont(18),
              title: 'Sign in',
              color: Colors.grey.shade100,
              textColor: Colors.black,
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  isDismissible: true,
                  enableDrag: true,
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  builder: (BuildContext context) {
                    return NeedLogin(mode: 'SIGNIN');
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
