import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewListView({required  this.articles});

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
