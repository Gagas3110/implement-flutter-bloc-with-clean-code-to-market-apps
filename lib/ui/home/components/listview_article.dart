import 'package:flutter/material.dart';
import 'package:news_app/helper/card_Article_helper.dart';
import 'package:news_app/helper/constant.dart';
import 'package:news_app/helper/custom_AppBar.dart';
import 'package:news_app/data/model/top_headlines_models.dart';
import 'package:news_app/routes/locator.dart';
import 'package:news_app/routes/navigator_service.dart';

class ListViewArticle extends StatelessWidget {
  const ListViewArticle({
    super.key,
    required this.listArticle,
    required this.articMod,
    required this.context,
    required this.index,
  });

  final List<Articles> listArticle;
  final TopHeadlinesModels? articMod;
  final BuildContext context;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index == 3 && listArticle.length > 3) {
      return GestureDetector(
        onTap: () {
          locator<NavigatorService>()
              .navigateToWithArgmnt(Constant.MENU_ALL_RECOMMENDATION, articMod);
        },
        child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View More',
                  style: TextStyle(color: Colors.blue.shade200),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue.shade200,
                ),
              ],
            )),
      );
    } else {
      return CardArticle(
        author: listArticle[index].author ?? '-',
        date: getFormatedDate(listArticle[index].publishedAt ?? '-'),
        urlImage: listArticle[index].urlToImage ?? '-',
        source: listArticle[index].source?.name ?? '-',
        title: listArticle[index].title ?? '-',
        url: listArticle[index].url ?? '-',
      );
    }
  }
}
