import 'package:flutter/material.dart';
import 'package:twin_social/AppColors/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twin_social/Components/Register/body.dart';
import 'package:twin_social/Screens/Login/LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenSate createState() => RegisterScreenSate();
}

class RegisterScreenSate extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Đăng ký",
        style: TextStyle(
            color: AppColors.baseBlackColor,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      backgroundColor: AppColors.baseGrey10Color,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/delete.svg",
            height: 16.0,
            width: 16.0,
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              'Đăng nhập',
              style: TextStyle(color: AppColors.baseOrangeColor),
            ),
          ),
        )
      ],
    );
  }
}




