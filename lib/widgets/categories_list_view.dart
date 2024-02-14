import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'category_card.dart';
class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const[
  CategoryModel(image: "assets/images/business.avif", categoryName: "Business"),
  CategoryModel(image: "assets/images/health.avif", categoryName: "Health"),
  CategoryModel(image: "assets/images/science.avif", categoryName: "Science"),
  CategoryModel(image: "assets/images/sports.avif", categoryName: "Sports"),
  CategoryModel(image: "assets/images/technology.jpeg", categoryName: "Technology"),
  CategoryModel(image: "assets/images/general.avif", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  CategoryCard(category: categories[index]);
          }),
    );
  }
}
