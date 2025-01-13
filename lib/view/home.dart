import 'package:flutter/material.dart';
import 'package:today_news/view/homeWidgit/news_list_view.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Today's", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("News",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange)),
            ],
          ),
        ),
        body: const NewsListView());
  }
}
