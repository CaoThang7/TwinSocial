import 'package:flutter/material.dart';
import 'package:twin_social/AppColors/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twin_social/Components/Register/valid.dart';
import 'package:twin_social/NetWork/NetworkHandler.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _fullnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  bool visPassword = true;
  bool visConfirmPassword = true;
  final _globalkey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  // Hàm onclick đăng ký check validate
  void validate() async {
    if (_globalkey.currentState!.validate()) {
      // Đẩy dữ liệu khi người dùng nhập vào lên database thông qua api register
      Map<String, String> data = {
        "fullname": _fullnameController.text,
        "username": _usernameController.text,
        "email": _emailController.text,
        "password": _passwordController.text,
      };
      print(data);

      var responseRegister = await networkHandler.post("/register", data);
      
      if (responseRegister.statusCode == 200 ||
          responseRegister.statusCode == 201) {
        print("Thanh cong roi");
      } else {
        print("That bai");
      }
      ;
    }
  }

  @override
  void initState() {
    super.initState();
    _fullnameController.addListener(() => setState(() {}));
    _usernameController.addListener(() => setState(() {}));
    _emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          color: AppColors.baseGrey10Color,
          child: Form(
            key: _globalkey,
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
                SizedBox(
                  height: 10,
                ),
                confirmTextField(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: validate,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.baseOrangeColor),
                    child: Center(
                      child: Text(
                        "Đăng Ký",
                        style: TextStyle(
                            fontSize: 24.0, color: AppColors.baseWhiteColor),
                      ),
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

  Widget fullnameTextField() => TextFormField(
        controller: _fullnameController,
        validator: validFullName,
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
          hintText: "Họ và tên",
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
        validator: validUserName,
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
          hintText: "Tên tài khoản",
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
        validator: validEmail,
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
        controller: _passwordController,
        validator: validPassword,
        obscureText: visPassword,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: visPassword
                ? SvgPicture.asset("assets/icons/eyesoff.svg")
                : SvgPicture.asset("assets/icons/eyeson.svg"),
            onPressed: () {
              setState(() {
                visPassword = !visPassword;
              });
            },
          ),
          helperStyle: TextStyle(fontSize: 16, color: Colors.green),
          hintText: "Mật khẩu",
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

  Widget confirmTextField() => TextFormField(
        controller: _confirmController,
        validator: validConfirmPassword,
        obscureText: visConfirmPassword,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: visConfirmPassword
                ? SvgPicture.asset("assets/icons/eyesoff.svg")
                : SvgPicture.asset("assets/icons/eyeson.svg"),
            onPressed: () {
              setState(() {
                visConfirmPassword = !visConfirmPassword;
              });
            },
          ),
          helperText: "Mật khẩu nên để 8 ký tự trở lên",
          helperStyle: TextStyle(fontSize: 16, color: Colors.green),
          hintText: "Xác nhận mật khẩu",
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
