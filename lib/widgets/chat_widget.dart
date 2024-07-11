import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persistent Bottom Sheet'),
      ),
      body: Stack(
        children: [
          // Your main page content here

          StatefulBuilder(
            builder: (context, setState) => DraggableScrollableSheet(
              initialChildSize: 0.5, // Adjust initial visibility
              minChildSize: 0.25,  // Minimum visible portion
              maxChildSize: 0.75,  // Maximum visible portion
              expand: false,
              builder: (context, scrollController) => Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 20, // Replace with your list length
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Item ${index + 1}'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
