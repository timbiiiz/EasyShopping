// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:e_comm/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import 'sign-in-screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appSecondoryColor,
          title: Text(
            'Sign Up',
            style: TextStyle(color: AppConstant.appTextColor),
          ),
          centerTitle: true,
        ),
        /* スクロールできるようにする(SingleChildScrollView) */
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), // スクロール時の挙動
          child: Container(
            child: Column(
              children: [
                SizedBox(height: Get.height / 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to my app',
                    style: TextStyle(
                      color: AppConstant.appSecondoryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 20),
                /* メアド入力フォーム */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondoryColor, // カーソルの色
                      keyboardType: TextInputType.emailAddress, // メアド専用に設定
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                /* ユーザーネーム入力フォーム */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondoryColor, // カーソルの色
                      keyboardType: TextInputType.name, // username専用に設定
                      decoration: InputDecoration(
                        hintText: 'UserName',
                        prefixIcon: Icon(Icons.person),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                /* phone number入力フォーム */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondoryColor, // カーソルの色
                      keyboardType: TextInputType.number, // phone専用に設定
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        prefixIcon: Icon(Icons.phone),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                /* City入力フォーム */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondoryColor, // カーソルの色
                      keyboardType: TextInputType.streetAddress, // city専用に設定
                      decoration: InputDecoration(
                        hintText: 'City',
                        prefixIcon: Icon(Icons.location_pin),
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                /* パスワード入力フォーム */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondoryColor, // カーソルの色
                      keyboardType:
                          TextInputType.visiblePassword, // password専用に設定
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.visibility_off), // パスワードを隠すアイコン
                        contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 20),
                /* Sign in with google */
                Material(
                  child: Container(
                    width: Get.width / 2,
                    height: Get.height / 18,
                    decoration: BoxDecoration(
                      color: AppConstant.appSecondoryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    /* SIGN UP Button */
                    child: TextButton(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(color: AppConstant.appTextColor),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 20),
                /* already have an account? */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: AppConstant.appSecondoryColor),
                    ),
                    SizedBox(width: Get.width / 80),
                    GestureDetector(
                      onTap: () =>
                          Get.offAll(() => SignInScreen()), //SignIn画面に遷移
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: AppConstant.appSecondoryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
