import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:today_news/model/artical_model.dart';
import 'package:today_news/service/news_service.dart';
import 'package:today_news/view/homeWidgit/news_list_view.dart';

class NewListViewGenerat extends StatefulWidget {
  const NewListViewGenerat({
    super.key,
    required this.categery,
  });
  final String categery;

  @override
  State<NewListViewGenerat> createState() => _NewListViewGeneratState();
}

class _NewListViewGeneratState extends State<NewListViewGenerat> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopheadLines(
      category: widget.categery,
    );
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articalList: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text('oops there was an error, try later'),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
