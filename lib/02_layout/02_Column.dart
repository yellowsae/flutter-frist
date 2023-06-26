// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 指定APP的基本结构
    return Scaffold(
      // AppBar 指定顶部的导航栏
      appBar: AppBar(
        // title 指定标题
        title: Text('Home'), // 这里的 Title 是一个组件
        // leading 指定左侧的按钮
        leading: Icon(Icons.menu), // 使用 Icon 组件
        // actions 指定右侧的按钮
        actions: [
          Icon(Icons.settings),
        ],
        // backgroundColor 指定背景颜色
        // elevation 指定阴影
        elevation: 0.4,
        // centerTitle 指定标题是否居中
        centerTitle: true,
      ),
      // body 指定内容区域 => (中间区域)
      body: ColumnRowDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      // 无限大
      width: double.infinity,
      // Column 组件
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // 传入的是组件
          Icon(Icons.settings, size: 50),
          Icon(Icons.search, size: 50),
          Icon(Icons.abc_rounded, size: 50),
          Icon(Icons.access_alarms_sharp, size: 50),

          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(Icons.settings, size: 50),
              Icon(Icons.search, size: 50),
              Icon(Icons.abc_rounded, size: 50),
              Icon(Icons.access_alarms_sharp, size: 50),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
          )
        ],
        // （线性布局）
        // 沿着主轴 对齐方式
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 交叉轴 对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
