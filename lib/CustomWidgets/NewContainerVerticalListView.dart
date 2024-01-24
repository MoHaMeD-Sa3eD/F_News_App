import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/NewsService.dart';
import '../Models/ArticleModel.dart';
import 'NewsContainer.dart';

class NewContainerVerticalListView extends StatelessWidget {
  final List<ArticleModel> newsForUI ;

  const NewContainerVerticalListView({super.key, required this.newsForUI});

   @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsForUI.length,
        (context, index) {
          return NewsContainer(
            articleModel: newsForUI[index],
          );
        },
      ),
    );
  }
}
