import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatsPage extends StatefulWidget {
  static const String id  ="ChatsPage";
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Text("3"),
      ),
    );
  }
}
