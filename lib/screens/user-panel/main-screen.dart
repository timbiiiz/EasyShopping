// ignore_for_file: file_names, prefer_const_constructors
import 'package:e_comm/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppConstant.appSecondoryColor,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: AppConstant.appMainColor, //app-content.dart(AppConstant)
        title: Text(AppConstant.appMainName), //app-content.dartから読込み(AppConstant)
        centerTitle: true,
      ),
    );
  }
}
