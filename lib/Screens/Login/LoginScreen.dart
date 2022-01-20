import 'package:flutter/material.dart';
import 'package:twin_social/AppColors/app_colors.dart';
import 'package:twin_social/Components/Login/appbars.dart';
import 'package:twin_social/Components/Login/body.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenSate createState() => LoginScreenSate();
}

class LoginScreenSate extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(context), //app bar Header
      body: Body(), //body screens Login
    );
  }
}
