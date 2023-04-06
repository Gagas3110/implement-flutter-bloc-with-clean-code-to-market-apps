import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/helper/constant.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:news_app/navigation/navigator_service.dart';

import '../navigation/locator.dart';

class CarouselSliderNews extends StatelessWidget {
  const CarouselSliderNews({
    super.key,
    required this.models,
  });

  final TopHeadlinesModels models;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 175,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 4)),
      items: models.articles?.map((instance) {
        return models.totalResults == 0
            ? const Center(
                child: Text("Empty News", style: TextStyle(fontSize: 20)))
            : models.articles!.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Builder(builder: (BuildContext context) {
                    return Banner(
                      location: BannerLocation.topStart,
                      message: 'HOT !',
                      child: InkWell(
                        onTap: () => locator<NavigatorService>()
                            .navigateToWithArgmnt(
                                Constant.MENU_DETAIL, instance.url),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              instance.urlToImage ?? " ",
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: double.infinity,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const SizedBox(
                                    height: 200,
                                    width: double.infinity,
                                    child: Icon(Icons.broken_image_outlined),
                                  ),
                                );
                              },
                            ),
                          ),
                          Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black12.withOpacity(0),
                                          Colors.black
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter)),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          instance.title!,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))),
                              )),
                        ]),
                      ),
                    );
                  });
      }).toList(),
    );
  }
}
