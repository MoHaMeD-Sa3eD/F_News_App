import 'package:flutter/material.dart';
import 'package:news_app/Screens/CategoryView.dart';

import '../Models/ ContainerCard_Horizontal_Model.dart';

class ContainerCard_Horizontal extends StatelessWidget {
  final ContainerCard_Horizontal_Model categoryCard;

  const ContainerCard_Horizontal({super.key, required this.categoryCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  CategoryView(category:categoryCard.categoryName.toLowerCase(),);
          }));
        },
        child: Container(
          alignment: Alignment.center,
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(categoryCard.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Text(categoryCard.categoryName,
              style: const TextStyle(color: Colors.white, fontSize: 23)),
        ),
      ),
    );
  }
}
