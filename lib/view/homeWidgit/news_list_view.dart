import 'package:flutter/material.dart';
import 'package:today_news/widget/custom_news_column.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => CustomNewsColumn(),
      childCount: 10,
    ));
  }
}
