import 'package:flutter/material.dart';

import 'Models/ListTitleImageModel.dart';
import 'Widgets/SymmetricListView.dart';

class TitleView extends StatelessWidget {
  const TitleView({super.key, required this.category});
  final ListTitleImageModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            category.text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: CustomScrollView(slivers: [
            SymmetricListView(
              category: category.text,
            )
          ]),
        ));
  }
}
