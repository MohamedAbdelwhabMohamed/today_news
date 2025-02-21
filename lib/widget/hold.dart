// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:today_news/model/artical_model.dart';
// import 'package:today_news/service/news_service.dart';
// import 'package:today_news/widget/custom_news_column.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticalModel> articalList = [];
//   bool isLoding = true;
//   @override
//   void initState() {
//     super.initState();
//     newGeneralMethod();
//   }

//   Future<void> newGeneralMethod() async {
//     articalList = await NewsService(Dio()).getNews();
//     isLoding = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoding
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//                 (context, index) =>
//                     DecisionNewsTile(articleModel: articalList[index]),
//                 childCount: articalList.length),
//           );
//   }
// }
