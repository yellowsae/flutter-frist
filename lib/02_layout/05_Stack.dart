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
      body: StackDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 使用 Stack 组件
      child: Stack(
        // 文本方向
        textDirection: TextDirection.rtl,
        // 文本的位置  - buttomCenter 底部的中间
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/58903178?s=400&u=5bf6a301f924c3a880e5942ec6b723eab9fce082&v=4'),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text('Miku',
                  style: TextStyle(fontSize: 30, color: Colors.red)),
            ),
            top: 50,
            left: 50,
          ),
          Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
