import 'package:flutter/material.dart';
import 'package:news_app/views/Home_view.dart';
import 'package:dio/dio.dart';

void main() {
  // getNews();
  runApp(const NewApp());
}

final dio = Dio();

// void getNews() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/everything?q=bitcoin&apiKey=d31155e0dd2a4c369cd8c3618cb71ccc');
//   print(response);
// }

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
