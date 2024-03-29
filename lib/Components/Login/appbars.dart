import 'package:flutter/material.dart';
import 'package:twin_social/AppColors/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twin_social/Screens/Login/LoginScreen.dart';
import 'package:twin_social/Screens/Register/RegisterScreen.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      "Đăng Nhập",
      style: TextStyle(
          color: AppColors.baseBlackColor,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    ),
    backgroundColor: AppColors.baseGrey10Color,
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );
          },
          child: Text(
            'Đăng ký',
            style: TextStyle(color: AppColors.baseOrangeColor),
          ),
        ),
      )
    ],
  );
}
