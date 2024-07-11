import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final String chatName;
  final String imagePath1;
  final String imagePath2;
  final String text;


  const QuestionPage(
      {super.key,
      required this.chatName,
      required this.imagePath1,
      required this.imagePath2,
      required this.text});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.left_chevron)),
            Image.asset("assets/images/${widget.imagePath1}"),
            Text(widget.imagePath1),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.left_chevron)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/${widget.imagePath2}"),
            Text(widget.chatName,style: TextStyle(fontSize: 22),),
            Text(widget.text,style: TextStyle(fontSize: 22),),


          ],
        )
      ],
    ),
    bottomNavigationBar: Row(
      children: [
        CircleAvatar(
          child: Icon(Icons.add),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Message"
            ),
          ),
        )
      ],
    ),
    );
  }

  Widget _buildBotIcon(IconData iconData, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            iconData,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
