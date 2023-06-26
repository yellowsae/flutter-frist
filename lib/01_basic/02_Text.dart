// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          Icon(Icons.search),
        ],
        // backgroundColor 指定背景颜色
        // elevation 指定阴影
        elevation: 0.4,
        // centerTitle 指定标题是否居中
        centerTitle: true,
      ),
      // body 指定内容区域 => (中间区域)
      body: TextDemo(), // 也是一个组件
      // bottomNavigationBar 指定底部的导航栏
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // childrne 多个内容
      children: [
        Text(
          "Hello World Flutter Text Components",
          // 设置字体的样式
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w600,
            fontFamily: AutofillHints.countryCode,
            // 斜体
            fontStyle: FontStyle.italic,
            // 文本装饰线
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
          ),
          // textAlign 指定文字的对齐方式
          textAlign: TextAlign.right,
          // maxLines 指定最大行数
          maxLines: 3,
          // 对超出的文字进行省略
          overflow: TextOverflow.ellipsis,
          // 文本的缩放比例
          textScaleFactor: 1.5,
        ),
        // RichText 富文本
        RichText(
          // text 属性: 指定 TextSpan 理解为 span 标签
          text: TextSpan(
              text: 'Hello',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
              children: [
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    )),
                TextSpan(
                    text: 'Flutter2222',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.cyan,
                    )),
                TextSpan(
                    text: 'Flutter333',
                    style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(207, 202, 57, 0.988),
                      // color: Colors.green[300],
                    )),
                TextSpan(
                    text: "Flutter4444",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ))
              ]),
        ),
      ],
    );
  }
}
