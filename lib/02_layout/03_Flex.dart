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
    return const Placeholder();
  }
}
