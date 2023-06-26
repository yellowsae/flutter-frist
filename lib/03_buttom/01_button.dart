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
      body: ButtonDemo(), // 也是一个组件
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

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // Wrap 组件 可以自动换行
      child: Wrap(
        children: [
          // 文本按钮
          TextButton(
            // 必填 ， 按下按钮的回调
            onPressed: () {
              print('点击按钮');
            },
            // 必填
            child: Text('TextButton'),

            // 可选 ， 长按按钮
            onLongPress: () {
              print('长按按钮');
            },
          ),

          // 普通按钮
          ElevatedButton(
            // 必填 ， 按下按钮的回调
            onPressed: () {
              print('点击按钮');
            },
            // 必填
            child: Text('TextButton'),
            // 可选 ， 长按按钮
            onLongPress: () {
              print('长按按钮');
            },
          ),

          // 轮廓按钮
          OutlinedButton(
            // 必填 ， 按下按钮的回调
            onPressed: () {
              print('点击按钮');
            },
            // 必填
            child: Text('TextButton'),
            // 可选 ， 长按按钮
            onLongPress: () {
              print('长按按钮');
            },

            // 给按钮添加样式
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 30),
              ),
              // 修改 按钮样式
              foregroundColor: MaterialStateProperty.all(
                Colors.red,
              ),
            ),
          ),

          // 轮廓按钮
          OutlinedButton(
            // 必填 ， 按下按钮的回调
            onPressed: () {
              print('点击按钮');
            },
            // 必填
            child: Text('TextButton'),
            // 可选 ， 长按按钮
            onLongPress: () {
              print('长按按钮');
            },

            // 给按钮添加样式
            style: ButtonStyle(
              // 按钮阴影
              shadowColor: MaterialStateProperty.all(
                Colors.purple,
              ),
              elevation: MaterialStateProperty.all(34),
              // 设置按钮大小
              minimumSize: MaterialStateProperty.all(
                Size(150, 60),
              ),
              // 设置水波纹
              overlayColor: MaterialStateProperty.all(
                Colors.red,
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(10),
              ),
              // 按钮的背景颜色
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              // 按钮的边框颜色
              side: MaterialStateProperty.all(
                // 对边框进行设置
                BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              shape: MaterialStateProperty.all(
                StadiumBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),

          // 图标按钮
          IconButton(
            onPressed: () {
              print('点击图标按钮');
            },
            icon: Icon(Icons.settings),
            color: Colors.purple,
            iconSize: 50,
            splashColor: Colors.red,
          ),

          // 图片按钮 + 文本按钮
          TextButton.icon(
            onPressed: () => print('点击按钮'),
            icon: Icon(Icons.settings),
            label: Text('图片按钮 + 文本按钮', style: TextStyle(fontSize: 30)),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(150, 60),
              ),
            ),
          ),
          Container(
            color: Colors.pink.shade100,
            width: double.infinity,

            // 按钮组
            child: ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () => print('按钮组'),
                  child: Text('按钮一'),
                ),
                ElevatedButton(
                  onPressed: () => print('按钮组'),
                  child: Text('按钮一'),
                ),
                ElevatedButton(
                  onPressed: () => print('按钮组'),
                  child: Text('按钮一'),
                ),
                ElevatedButton(
                  onPressed: () => print('按钮组'),
                  child: Text('按钮一'),
                ),
              ],
            ),
          ),

          // 回退按钮
          BackButton(
            onPressed: () => print('回退按钮'),
            color: Colors.red,
          ),

          // 关闭按钮
          CloseButton(
            color: Colors.purple,
            onPressed: () => print('关闭按钮'),
          ),
        ],
      ),
    );
  }
}
