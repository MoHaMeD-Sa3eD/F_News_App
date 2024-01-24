import 'package:flutter/material.dart';

import '../Models/ ContainerCard_Horizontal_Model.dart';
import 'ContainerCard_Horizontal.dart';

class ContainerCard_Horizontal_ListView extends StatelessWidget {
  const ContainerCard_Horizontal_ListView({
    super.key,
  });

  final List<ContainerCard_Horizontal_Model> categories = const [
    ContainerCard_Horizontal_Model(
        image: 'assets/general.jpeg', categoryName: 'general'),
    ContainerCard_Horizontal_Model(
        image: 'assets/sports.jpeg', categoryName: 'sports'),
    ContainerCard_Horizontal_Model(
        image: 'assets/entertaiment.jpeg', categoryName: 'entertainment'),
    ContainerCard_Horizontal_Model(
        image: 'assets/business.jpeg', categoryName: 'business'),
    ContainerCard_Horizontal_Model(
        image: 'assets/health.jpeg', categoryName: 'health'),
    ContainerCard_Horizontal_Model(
        image: 'assets/science.jpeg', categoryName: 'science'),
    ContainerCard_Horizontal_Model(
        image: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, type) {
            return ContainerCard_Horizontal(
              categoryCard: categories[type],
            );
          }),
    );
  }
}
