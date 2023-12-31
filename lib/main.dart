import 'package:flutter/material.dart';

// import "./01_basic/01_Hello.dart";
// import "./01_basic/02_Text.dart";
// import "./02_layout/01_container.dart";
// import "./02_layout/02_Column.dart";
// import "./02_layout/03_Flex.dart";
// import "./02_layout/04_Wrap.dart";
// import "./02_layout/05_Stack.dart";
// import "./02_layout/06_Card.dart";
// import "./03_buttom/01_button.dart";
import "./04_Image/01.Image.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 基本的 MaterialApp
    return const MaterialApp(
      title: "当前应用的标题",
      home: Home(), // 记得加上 ()
      debugShowCheckedModeBanner: false,
    );
  }
}
