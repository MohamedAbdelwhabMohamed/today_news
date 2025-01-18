import 'package:flutter/material.dart';
import 'package:today_news/view/homeWidgit/categories_listView_row.dart';
import 'package:today_news/view/homeWidgit/news_list_view.dart';
import 'package:today_news/widget/custom_news_column.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategorysListViewRow(),
            ),
            NewsListView()
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
