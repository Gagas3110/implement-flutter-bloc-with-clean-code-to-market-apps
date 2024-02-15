import 'package:flutter/material.dart';
import 'package:news_app/helper/constant.dart';
import 'package:news_app/routes/locator.dart';
import 'package:news_app/routes/navigator_service.dart';
import 'package:sizer/sizer.dart';

class CardArticle extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String source;
  final String urlImage;
  final String url;
  const CardArticle({
    super.key,
    required this.title,
    required this.author,
    required this.date,
    required this.urlImage,
    required this.source,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => locator<NavigatorService>()
          .navigateToWithArgmnt(Constant.MENU_DETAIL, url),
      child: Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.only(
              top: 0.5.h, bottom: 0.5.h, right: 0.5.h, left: 0.5.h),
          width: double.infinity,
          constraints: BoxConstraints(minHeight: 15.h),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey.shade100, width: 0.4),
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Container(
                        height: 14.h,
                        width: 12.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Colors.grey.shade100, width: 0.4),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.network(
                          urlImage,
                          fit: BoxFit.fitHeight,
                          height: double.infinity,
                          width: double.infinity,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              child: const SizedBox(
                                height: 200,
                                width: double.infinity,
                                child: Icon(Icons.broken_image_outlined),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 2.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          source,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 1.h),
                        SizedBox(
                          width: 55.w,
                          child: Text(
                            title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 9.sp),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              author,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 2.h),
                            Text(
                              date,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
