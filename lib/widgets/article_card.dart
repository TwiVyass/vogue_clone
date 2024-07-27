import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  ArticleCard({required this.title, required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
