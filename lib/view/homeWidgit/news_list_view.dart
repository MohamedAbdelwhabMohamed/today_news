import 'package:flutter/material.dart';
import 'package:today_news/widget/news_column.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: NewsColumn(),
            ));
  }
}
