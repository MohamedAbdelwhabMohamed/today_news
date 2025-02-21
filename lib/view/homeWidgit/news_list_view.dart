import 'package:flutter/material.dart';
import 'package:today_news/model/artical_model.dart';
import 'package:today_news/widget/news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articalList,
  });

  final List<ArticalModel> articalList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) =>
              DecisionNewsTile(articleModel: articalList[index]),
          childCount: articalList.length),
    );
  }
}
