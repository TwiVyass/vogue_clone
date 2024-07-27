import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  final String title;
  final String content;

  const ArticleScreen({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            content,
            style: const TextStyle(
              fontFamily: 'Vogue',
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
