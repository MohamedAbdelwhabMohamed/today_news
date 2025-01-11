import 'package:flutter/material.dart';
import 'package:today_news/model/category_model.dart';

class Categorys extends StatelessWidget {
  const Categorys({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 100,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage(category.image), fit: BoxFit.cover)),
      child: Center(
        child: Text(category.text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
