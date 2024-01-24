import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';
import '../CustomWidgets/ContainerCard_Horizontal_ListView.dart';
import '../CustomWidgets/NewContainerVerticalListView.dart';
import '../CustomWidgets/NewContainerVerticalListViewBuilder.dart';
import '../services/NewsService.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: 'News'),
              TextSpan(text: 'Cloud', style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: ContainerCard_Horizontal_ListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 35,
            ),
          ),
          NewContainerVerticalListViewBuilder(category: 'general',),
        ],
      ),
    );
  }
}


