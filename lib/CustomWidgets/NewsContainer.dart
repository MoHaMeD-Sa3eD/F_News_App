import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:news_app/Screens/NewsWebView.dart';

class NewsContainer extends StatelessWidget {
  // final NewsContainerModel newsCategory;

  final ArticleModel articleModel;

  const NewsContainer({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewswebView(
            url: articleModel.url,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: articleModel.image != null
                  ? Image.network(
                      articleModel.image!,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    )
                  : Image.asset(
                      'assets/images.png',
                      fit: BoxFit.cover,
                      height: 120,
                      width: double.infinity,
                    ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subTitle ?? 'No description',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
