import 'package:flutter/material.dart';
import 'package:today_news/model/category_model.dart';
import 'package:today_news/view/homeWidgit/categery_veiw.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategeryView(
                      categery: category.categoryName,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.cover)),
        height: 80,
        width: 200,
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
