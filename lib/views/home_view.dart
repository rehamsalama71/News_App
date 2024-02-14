import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/new_list_view.dart';
import 'package:news_app/widgets/news_listview_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        
        padding: const EdgeInsets.symmetric(
          horizontal: 16,),
          child:  CustomScrollView(
            slivers: [
                SliverToBoxAdapter(child: CategoryListView()),
                  SliverToBoxAdapter(child: SizedBox(height: 32,),),
                  NewsListViewBuilder(category: 'general',),
              
            ],
          ),
      
      )
       
    );
  }
}

