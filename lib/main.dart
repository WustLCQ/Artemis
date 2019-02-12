/*
 * @Author: Li Chunqiang
 * @Date: 2019-02-11 14:53:02
 * @Last Modified by: Li Chunqiang
 * @Last Modified time: 2019-02-11 15:43:26
 */
import 'package:flutter/material.dart';
import 'views/home/index.dart';
import 'common/style.dart';

void main() => runApp(Artemis());

class Artemis extends StatelessWidget {
  Artemis() {

  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: AppColor['ThemeColor'],
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: AppColor['TextColor'],
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: AppColor['TextColor'], fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: AppColor['ThemeColor'],
          size: 35.0,
        ),
      ),
      home: new Scaffold(
        body: new HomePage()
      ),
    );
  }
}