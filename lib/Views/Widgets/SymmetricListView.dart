import 'package:flutter/material.dart';
import 'package:newsapp/Views/Models/NewModel.dart';
import 'package:newsapp/Views/Services/NewService.dart';
import 'CustomNew.dart';

class SymmetricListView extends StatefulWidget {
  const SymmetricListView({super.key, required this.category});
  final String category;
  @override
  State<SymmetricListView> createState() => _SymmetricListViewState();
}

class _SymmetricListViewState extends State<SymmetricListView> {
  List<NewModel> mylist = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();

    getgeneralnews();
  }

  Future<void> getgeneralnews() async {
    mylist = await NewService().newservice(category: widget.category);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
            child: CircularProgressIndicator(),
          ))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: mylist.length,
                (context, index) {
              return CustomNew(
                mylist: mylist[index],
              );
            }),
          );
  }
}
