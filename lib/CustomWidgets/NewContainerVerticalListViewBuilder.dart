import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';
import '../services/NewsService.dart';
import 'NewContainerVerticalListView.dart';

class NewContainerVerticalListViewBuilder extends StatefulWidget {
  final String category;

  const NewContainerVerticalListViewBuilder(
      {super.key, required this.category});

  @override
  State<NewContainerVerticalListViewBuilder> createState() =>
      _NewContainerVerticalListViewBuilderState();
}

class _NewContainerVerticalListViewBuilderState
    extends State<NewContainerVerticalListViewBuilder> {
  dynamic fData;

  @override
  void initState() {
    super.initState();
    fData = NewsService(dio: Dio()).getNews(category:widget.category );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: fData,
      builder: (context, snapShot) {
        return snapShot.hasData
            ? NewContainerVerticalListView(
                newsForUI: snapShot.data!,
              )
            : snapShot.hasError
                ? const SliverToBoxAdapter(
                    child: Text('oops there was an error'),
                  )
                : const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
      },
    );
  }
}