import 'package:flutter/material.dart';

import 'package:today_news/view/homeWidgit/categories_listView.dart';
import 'package:today_news/widget/news_list_buider.dart';

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            NewListViewGenerat(
              categery: 'general',
            )
          ],
        ),
      ),
      // body: const Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: const Column(children: [
      //     SizedBox(
      //       height: 100,
      //       child: CategorysListViewRow(),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Expanded(child: NewsListView())
      //   ],),
      // ),
    );
  }
}
