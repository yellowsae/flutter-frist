// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

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
      body: CardDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

// Card 组件 和 ListTile 组件

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // children 包含多个组件
      children: [
        // 卡片组件
        Card(
          margin: EdgeInsets.all(30),
          color: Colors.purple.shade200,
          shadowColor: Colors.yellow,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          // 再次包含 Column 组件
          child: Column(
            children: [
              // 使用 ListTitle 组件
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  '高级工程师',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.settings, size: 50),
              ),
              ListTile(
                title: Text(
                  '电话: xxxxxxx',
                  style: TextStyle(fontSize: 20),
                ),
                // subtitle: Text(
                //   '高级工程师',
                //   style: TextStyle(fontSize: 18),
                // ),
                // leading: Icon(Icons.settings, size: 50),
              ),
              ListTile(
                title: Text(
                  '地址：  xxxxxxxx',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(30),
          // 再次包含 Column 组件
          child: Column(
            children: [
              // 使用 ListTitle 组件
              ListTile(
                title: Text(
                  '李四',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'JAVA工程师',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.settings, size: 50),
              ),
              ListTile(
                title: Text(
                  '电话: xxxxxxx',
                  style: TextStyle(fontSize: 20),
                ),
                // subtitle: Text(
                //   '高级工程师',
                //   style: TextStyle(fontSize: 18),
                // ),
                // leading: Icon(Icons.settings, size: 50),
              ),
              ListTile(
                title: Text(
                  '地址：  xxxxxxxx',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
