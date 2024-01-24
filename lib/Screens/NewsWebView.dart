import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewswebView extends StatelessWidget {
  final String url;

  late final controller = WebViewController()..loadRequest(Uri.parse(url));

  NewswebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: url != null
          ? WebViewWidget(controller: controller)
          : const Center(
              child: Text(
                  'oops there was an error with this link , please try again later')),
    );
  }
}
