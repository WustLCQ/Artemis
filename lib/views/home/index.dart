/*
 * @Author: Li Chunqiang
 * @Date: 2019-02-11 14:55:57
 * @Last Modified by: Li Chunqiang
 * @Last Modified time: 2019-02-12 14:46:43
 */
import 'package:flutter/material.dart';
import 'package:artemis/components/search_input.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildSearchInput(BuildContext context) {
    return new SearchInput();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: buildSearchInput(context))
    );
  }
}