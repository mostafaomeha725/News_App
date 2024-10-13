import 'package:flutter/material.dart';
import 'package:newsapp/Views/Models/ListTitleImageModel.dart';
import 'package:newsapp/Views/Title_View.dart';
// import 'package:newsapp/Views/Services/NewService.dart';
import 'package:newsapp/Views/Widgets/TitleImage.dart';

// import '../Services/NewService.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({super.key});

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  final List<ListTitleImageModel> titleimage = [
    ListTitleImageModel('assets/Business.jpg', 'Business'),
    ListTitleImageModel('assets/Entertainment.webp', 'Entertainment'),
    ListTitleImageModel('assets/general.avif', 'General'),
    ListTitleImageModel('assets/health.avif', 'Health'),
    ListTitleImageModel('assets/science.avif', 'Science'),
    ListTitleImageModel('assets/sports.avif', 'Sports'),
    ListTitleImageModel('assets/technology.jpeg', 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: titleimage.length,
      itemBuilder: (context, index) {
        final item = titleimage[index];
        return TitleImage(
          onTap: () {
            Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => TitleView(
                    category: titleimage[index],
                  ),
                ));
          },
          image: item.image,
          text: item.text,
        );
      },
    );
  }
}
