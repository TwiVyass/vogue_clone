import 'package:flutter/material.dart';
import 'package:vogue_clone/widgets/custom_app_bar.dart';
import 'article_screen.dart'; // Import the ArticleScreen class

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> articles = List.generate(
    10,
    (index) => {
      'title': 'Article ${index + 1}',
      'content': 'This is the content of article ${index + 1}. Here you can include details about the article.',
    },
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return ListTile(
                  title: Text(
                    article['title']!,
                    style: TextStyle(
                      fontFamily: 'Vogue',
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleScreen(
                          title: article['title']!,
                          content: article['content']!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            Center(child: Text('Trends Content')),
            Center(child: Text('Collections Content')),
            Center(child: Text('Events Content')),
          ],
        ),
      ),
    );
  }
}
