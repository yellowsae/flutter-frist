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
      body: ImageDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('浮动按钮'),
        tooltip: "这是浮动按钮",
        elevation: 0,
        backgroundColor: Colors.purple.shade500,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 加载本地图片
        Image.asset(
          'images/miku-hanp.png',
          // 设置图片的宽高
          width: 200,
          height: 200,
          // fix 保持图片的宽高比  cover | fill
          fit: BoxFit.cover,
        ),

        // 加载网络图片
        Image.network(
          'https://avatars.githubusercontent.com/u/58903178?s=400&u=5bf6a301f924c3a880e5942ec6b723eab9fce082&v=4',
          // 设置图片的宽高
          width: 200,
          height: 200,
          // 设置图片的 平铺方式
          repeat: ImageRepeat.repeat,
          // 设置 图片的混合模式
          colorBlendMode: BlendMode.darken,
          color: Colors.purple,
        ),
      ],
    );
  }
}
