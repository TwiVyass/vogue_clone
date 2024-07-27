import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.grey[200],
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Sidebar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          // Add more sidebar content here
        ],
      ),
    );
  }
}
