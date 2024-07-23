import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/CategoryView.dart';

class CategoryCardd extends StatelessWidget {
  const CategoryCardd({super.key, required this.categorry});

  final CategoryModel categorry;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categoryview(
            category: categorry.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categorry.imageAssetURL),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(categorry.categoryName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
