import 'package:flutter/material.dart';

// MyApp

// 在编辑器使用 st -- 创建有状态 | 无状态 组件

// 声明一个组件
class HelloFlutter extends StatelessWidget {
  // StatelessWidget 无状态组件
  const HelloFlutter({super.key});

  // 重写 build 方法 (因为 StatelessWidget 是抽象类)
  @override
  Widget build(BuildContext context) {
    return Container(
      // child 属性 ：Center 组件
      child: Center(
          child: Text(
        'Hello, Flutter!',
        textDirection: TextDirection.ltr,
      )),
    ); // Container
  }
}

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
          Icon(Icons.search),
        ],
        // backgroundColor 指定背景颜色
        // elevation 指定阴影
        elevation: 0.4,
        // centerTitle 指定标题是否居中
        centerTitle: true,
      ),
      // body 指定内容区域 => (中间区域)
      body: HelloFlutter(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}
