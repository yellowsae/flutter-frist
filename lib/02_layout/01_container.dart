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
      body: ContainerDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hello World Flutter Text ComponentsComponentsComponentsComponentsComponentsComponentsComponentsComponents",
        // 设置字体的样式
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
      ),
      // width: 200,
      // height: 200,

      // 设置宽高
      width: double.infinity,
      height: double.infinity,

      // 设置内边距 使用 EdgeInsets 组件设置 all() 所有  四个方向上  内边距
      padding: EdgeInsets.all(20),
      // EdgeInsets 组件设置 fromLTRB （）设置  左上右下  外编剧
      margin: EdgeInsets.fromLTRB(10, 20, 30, 40),

      // decoration 设置
      decoration: BoxDecoration(
        // 设置边框
        // border: Border(
        //   top: BorderSide(
        //     width: 5,
        //     color: Colors.red,
        //   ),
        //   right: BorderSide(
        //     width: 5,
        //     color: Colors.red,
        //   ),
        //   left: BorderSide(
        //     width: 5,
        //     color: Colors.red,
        //   ),
        //   bottom: BorderSide(
        //     width: 5,
        //     color: Colors.red,
        //   ),
        // ),
        border: Border.all(
          width: 5,
          color: Colors.blue,
        ),
        // 设置 圆角边框
        borderRadius: BorderRadius.all(
          Radius.circular(10),
          // topLeft: Radius.circular(10),
          // topRight: Radius.circular(10),
          // bottomLeft: Radius.circular(10),
          // bottomRight: Radius.circular(10),
        ),
        // 设置背景颜色
        color: Colors.yellow,
        // 设置渐变
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ],
        ),
      ),
      // 内容对齐方式
      alignment: Alignment.center,
      // 变形相关 - rotateZ 旋转
      transform: Matrix4.rotationZ(0.1),
    );
  }
}
