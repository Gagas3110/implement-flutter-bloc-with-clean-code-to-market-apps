import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app/helper/card_Article_helper.dart';
import 'package:news_app/helper/custom_AppBar.dart';
import 'package:news_app/helper/search_textfield.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:sizer/sizer.dart';

class MoreRecommendationUi extends StatefulWidget {
  final TopHeadlinesModels model;
  const MoreRecommendationUi({super.key, required this.model});

  @override
  State<MoreRecommendationUi> createState() => _MoreRecommendationUiState();
}

class _MoreRecommendationUiState extends State<MoreRecommendationUi> {
  TextEditingController searchCo = TextEditingController();
  List<Articles> matches = [];
  List<Articles> res = [];
  Timer? searchOnStoppedTyping;

  @override
  void initState() {
    super.initState();
    res = widget.model.articles!;
    matches = widget.model.articles!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: prefAppBar(context, 'More Recommendation'),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 10.h),
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: matches.length,
                              itemBuilder: (context, index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  key: ValueKey(matches[index].title),
                                  duration: const Duration(milliseconds: 375),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: fadeOut(
                                        context,
                                        index,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.2.h,
            left: 5.w,
            right: 5.w,
            child: Container(
              height: 10.h,
              width: double.infinity,
              child: SearchTextField(
                controller: searchCo,
                hint: 'Search Data by title',
                suffix: Icons.search,
                inputType: null,
                onChanged: (value) {
                  setState(() async {
                    await onChangeHandler(value);
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget fadeOut(BuildContext context, int index) {
    return CardArticle(
      author: matches[index].author.toString(),
      date: getFormatedDate(matches[index].publishedAt.toString()),
      urlImage: matches[index].urlToImage.toString(),
      source: matches[index].source.toString(),
      title: matches[index].title.toString(),
      url: matches[index].url.toString(),
    );
  }

  searchData(String search) async {
    List<Articles> getData = [];

    if (search == '' && search.isEmpty) {
      getData = res;
    } else {
      getData = res
          .where((article) =>
              article.title!.toLowerCase().contains(search.toLowerCase()))
          .toList();
    }

    setState(() {
      matches = getData;
    });
  }

  onChangeHandler(String value) async {
    const duration = Duration(milliseconds: 800);
    if (searchOnStoppedTyping != null) {
      setState(() => searchOnStoppedTyping!.cancel());
    }
    setState(
        () => searchOnStoppedTyping = Timer(duration, () => searchData(value)));
  }
}
