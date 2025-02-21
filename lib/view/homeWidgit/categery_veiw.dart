import 'package:flutter/material.dart';
import 'package:today_news/widget/news_list_buider.dart';

class CategeryView extends StatelessWidget {
  const CategeryView({super.key, required this.categery});
  final String categery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text(categery, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: CustomScrollView(
          slivers: [
            NewListViewGenerat(
              categery: categery,
            )
          ],
        ),
      ),
    );
  }
}
