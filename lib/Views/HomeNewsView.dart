

import 'package:flutter/material.dart';
import 'package:newsapp/Views/Widgets/BodyHomeNewsView.dart';

class HomeNewsView extends StatelessWidget {
  const HomeNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       forceMaterialTransparency :true,
        backgroundColor: Colors.white,
        title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('News' ,style: TextStyle(
        color: Colors.black,
      ),),
      Text('Cloud' ,style: TextStyle(
        color: Colors.orange,
      ),),
      ],
    ),
      ),
      body: const BodyHomeNewsView() ,
    );
  }
}