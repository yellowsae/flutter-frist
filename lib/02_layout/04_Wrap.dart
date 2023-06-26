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
      body: WrapDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class WrapDemo extends StatelessWidget {
  // ignore: prefer_final_fields
  List<String> _list = [
    'Flutter',
    'Dart',
    'Android',
    'Java',
    'Kotlin',
    'Swift',
    'Objective-C',
    'PHP',
    'Python',
  ];

  List<Widget> _JiShu() {
    return _list
        .map(
          // 返回一个组件
          (item) => Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.cyan.shade900,
              child: Text('Flutter相关'),
            ),
            label: Text(item),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 使用 Row 组件 会出现溢出的情况
        // 改为 Wrap 组件
        Wrap(
          children: [
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('张三'),
            ),
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('李四'),
            ),
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('王五'),
            ),
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('赵六'),
            ),
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('张三'),
            ),
            Chip(
              // avatar 指定左侧的图标
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Text('Flutter'),
              ),
              label: Text('张三'),
            ),
          ],
        ),
        // 使用 Wrap 组件
        Wrap(
          // 使用 生成的 List 调用 函数
          children: _JiShu(),
          // 水平方向的间距
          spacing: 18.0,
          // 垂直方向的间距
          runSpacing: 100,
          // 对齐方式
          alignment: WrapAlignment.spaceAround,
        )
      ],
    );
  }
}
