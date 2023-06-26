// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
      body: FlexDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 验证 Expanded 的作用
        Row(
          children: [
            Container(
              // 指定宽度
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Flex(
          // 设置
          direction: Axis.horizontal,
          // 主轴对齐方式
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // 排列顺序 -> 从右到左 rtl
          textDirection: TextDirection.rtl,
          children: [
            Icon(Icons.settings, size: 50),
            Icon(Icons.search, size: 50),
            Icon(Icons.abc_rounded, size: 50),
            Icon(Icons.access_alarms_sharp, size: 50),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: Colors.tealAccent,
              ),
            ),
          ],
        ),

        Container(
          height: 100,
          margin: EdgeInsets.all(10),
          child: Flex(
            direction: Axis.vertical,
            // 垂直方向 的 item 从下到上排列
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  color: Colors.green,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.tealAccent,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
