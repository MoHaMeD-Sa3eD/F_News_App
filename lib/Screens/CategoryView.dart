import 'package:flutter/material.dart';
import 'package:news_app/CustomWidgets/NewContainerVerticalListViewBuilder.dart';

import '../CustomWidgets/NewContainerVerticalListView.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewContainerVerticalListViewBuilder(category: category,),
        ],
      ),
    );
  }
}
