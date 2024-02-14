// // import 'package:dio/dio.dart';
// // import 'package:flutter/material.dart';
// // import 'package:news_app/models/article_model.dart';
// // import 'package:news_app/services/news_service.dart';
// // import 'package:news_app/widgets/news_tile.dart';

// // class NewListView extends StatefulWidget {
// //   const NewListView({super.key});

// //   @override
// //   State<NewListView> createState() => _NewListViewState();
// // }

// // class _NewListViewState extends State<NewListView> {
// //   List<ArticleModel> articles = [];
// //   bool isLoading = true;
// //   @override
// //   void initState() {
// //     super.initState();
// //     getNews();
// //   }

// //   Future<void> getNews() async {
// //     articles = await NewsService(Dio()).getNews();
// //     isLoading = false;
// //     setState(() {});
// //   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) :    SliverList(
//         delegate: SliverChildBuilderDelegate(childCount: articles.length,
//             (context, index) {
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 32),
//         child: NewsTile(
//           articleModel: articles[index],
//         ),
//       );
//     }));
//   }
// }