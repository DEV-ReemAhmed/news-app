import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetURL: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        imageAssetURL: 'assets/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        imageAssetURL: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(imageAssetURL: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(
        imageAssetURL: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(imageAssetURL: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(
        imageAssetURL: 'assets/technology.jpeg', categoryName: 'Technology')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCardd(categorry: categories[index]);
          }),
    );
  }
}
