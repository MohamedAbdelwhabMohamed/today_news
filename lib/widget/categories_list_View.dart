// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:today_news/model/category_model.dart';
import 'package:today_news/widget/categorys.dart';

class AllItem extends StatelessWidget {
  const AllItem({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/science.avif',
      text: 'Science',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      text: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      text: 'Health',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Categorys(category: categories[index]),
              ],
            ),
        itemCount: categories.length);
  }
}
