import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/diet_model.dart';
import 'package:flutter_application_1/models/popular_model.dart';
import 'package:flutter_application_1/pages/appbar.dart';
import 'package:flutter_application_1/pages/category.dart';
import 'package:flutter_application_1/pages/diet.dart';
import 'package:flutter_application_1/pages/popular.dart';
import 'package:flutter_application_1/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];
  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  void _getPopularDiets() {
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
    _getPopularDiets();
    return Scaffold(
      appBar: Appbar.appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Search.searchField(),
          const SizedBox(
            height: 40,
          ),
          Category.categoriesList(categories),
          const SizedBox(
            height: 40,
          ),
          Diet.dietsList(
            diets,
          ),
          const SizedBox(height: 40),
          Popular.popularList(popularDiets)
        ],
      ),
    );
  }
}
