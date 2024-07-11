import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StorePage extends StatefulWidget {
  static const String id  ="StorePage";
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Text("2"),
      ),
    );
  }
}
