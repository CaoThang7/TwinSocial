import 'package:flutter/material.dart';
import 'package:twin_social/AppColors/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _fullnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _fullnameController.addListener(() => setState(() {}));
    _usernameController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            fullnameTextField(),
            SizedBox(
              height: 10,
            ),
            usernameTextField(),
            SizedBox(
              height: 10,
            ),
            emailTextField(),
            SizedBox(
              height: 10,
            ),
            passwordTextField(),
          ],
        ),
      ),
    );
  }

  Widget fullnameTextField() => TextFormField(
        controller: _fullnameController,
        decoration: InputDecoration(
          // Xoá clear text đã nhập
          suffixIcon: _fullnameController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/delete.svg",
                    height: 10,
                    width: 10,
                  ),
                  onPressed: () => _fullnameController.clear(),
                ),
          hintText: "fullname",
          border: OutlineInputBorder(), //Hiện viền bao quanh TextFormField
          filled: true,
          fillColor: Colors.white, // Màu nền trong TextFormField
          // focusedBorder: hành động khi click vào TextFormField
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors
                    .baseGrey30Color), //Click vào viền bao quanh đổi màu
            borderRadius:
                BorderRadius.circular(8.0), //bo tròn hoặc vuông tuỳ thích
          ),
          // enabledBorder: hành động khi chưa click vào TextFormField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.baseGrey30Color), //Tương tự focusedBorder
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
      );

  Widget usernameTextField() => TextFormField(
        controller: _usernameController,
        decoration: InputDecoration(
          // Xoá clear text đã nhập
          suffixIcon: _usernameController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/delete.svg",
                    height: 10,
                    width: 10,
                  ),
                  onPressed: () => _usernameController.clear(),
                ),
          hintText: "username",
          border: OutlineInputBorder(), //Hiện viền bao quanh TextFormField
          filled: true,
          fillColor: Colors.white, // Màu nền trong TextFormField
          // focusedBorder: hành động khi click vào TextFormField
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors
                    .baseGrey30Color), //Click vào viền bao quanh đổi màu
            borderRadius:
                BorderRadius.circular(8.0), //bo tròn hoặc vuông tuỳ thích
          ),
          // enabledBorder: hành động khi chưa click vào TextFormField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.baseGrey30Color), //Tương tự focusedBorder
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
      );

  Widget emailTextField() => TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          // Xoá clear text đã nhập
          suffixIcon: _emailController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/delete.svg",
                    height: 10,
                    width: 10,
                  ),
                  onPressed: () => _emailController.clear(),
                ),
          hintText: "Email",
          border: OutlineInputBorder(), //Hiện viền bao quanh TextFormField
          filled: true,
          fillColor: Colors.white, // Màu nền trong TextFormField
          // focusedBorder: hành động khi click vào TextFormField
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors
                    .baseGrey30Color), //Click vào viền bao quanh đổi màu
            borderRadius:
                BorderRadius.circular(8.0), //bo tròn hoặc vuông tuỳ thích
          ),
          // enabledBorder: hành động khi chưa click vào TextFormField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.baseGrey30Color), //Tương tự focusedBorder
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
      );

  Widget passwordTextField() => TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          helperText: "Sai mat khau roi",
          helperStyle: TextStyle(fontSize: 16, color: Colors.red),
          hintText: "Password",
          border: OutlineInputBorder(), //Hiện viền bao quanh TextFormField
          filled: true,
          fillColor: Colors.white, // Màu nền trong TextFormField
          // focusedBorder: hành động khi click vào TextFormField
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors
                    .baseGrey30Color), //Click vào viền bao quanh đổi màu
            borderRadius:
                BorderRadius.circular(8.0), //bo tròn hoặc vuông tuỳ thích
          ),
          // enabledBorder: hành động khi chưa click vào TextFormField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.baseGrey30Color), //Tương tự focusedBorder
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
      );
}
