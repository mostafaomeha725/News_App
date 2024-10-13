import 'package:flutter/material.dart';
import 'HorizontalListView.dart';
import 'SymmetricListView.dart';

class BodyHomeNewsView extends StatelessWidget {
  const BodyHomeNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 130,
                child: HorizontalListView(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SymmetricListView(
              category: 'general',
            )
          ],
        ));
  }
}
