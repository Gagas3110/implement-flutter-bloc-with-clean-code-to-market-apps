import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app/helper/card_Article_helper.dart';
import 'package:news_app/helper/constant.dart';

import 'package:news_app/helper/custom_AppBar.dart';
import 'package:news_app/helper/extension.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:sizer/sizer.dart';

import '../helper/carousel_slider.dart';
import '../navigation/locator.dart';
import '../navigation/navigator_service.dart';
import '../state_management/top_headlines/top_headlines_bloc.dart';
import '../state_management/top_headlines/top_headlines_event.dart';
import '../state_management/top_headlines/top_headlines_state.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HeadlinesBloc()..add(SetupHeadlinesEvent()),
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  TopHeadlinesModels models = TopHeadlinesModels();
  TopHeadlinesModels articMod = TopHeadlinesModels();
  Login logs = Login();
  String? image;

  @override
  void initState() {
    super.initState();
  }

  bloc(dynamic event) {
    BlocProvider.of<HeadlinesBloc>(context).add(event);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context, image ?? ''),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        onPressed: () {
          bloc(DoLogout());
        },
      ),
      body: BlocListener<HeadlinesBloc, HeadlinesState>(
        listener: (context, state) async {
          if (state is SetupHeadlinesComplete) {
            setState(() {
              models = state.res;
              articMod = state.rest;
              logs = state.log;
              image = state.log.image;
            });
          }

          if (state is HomeLogout) {
            locator<NavigatorService>()
                .navigateReplaceTo(Constant.FIRST_SCREEN);

            context.succesSnackBar('Berhasil Logout');
          }

          if (state is HeadlinesFailedShow) {
            context.failSnackbar(state.msg);
          }
        },
        child: BlocBuilder<HeadlinesBloc, HeadlinesState>(
          builder: (context, state) {
            if (state is SetupHeadlinesProgress) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimationLimiter(
                      child: Center(
                    child: CircularProgressIndicator(),
                  )),
                ],
              );
            } else {
              return Container(
                height: 100.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'TOP HEADLINES !',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Hi ${logs.firstName}!',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text('Top Headlines News for you !'),
                      SizedBox(height: 2.h),
                      CarouselSliderNews(models: models),
                      SizedBox(height: 2.h),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RECOMMENDATION',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                          Visibility(
                            //visible: articMod.articles.length > 2,
                            child: GestureDetector(
                              onTap: () {
                                locator<NavigatorService>()
                                    .navigateToWithArgmnt(
                                        Constant.MENU_ALL_RECOMMENDATION,
                                        articMod);
                              },
                              child: Text(
                                'View All (${articMod.articles?.length})',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return AnimationConfiguration.staggeredList(
                                position: index,
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
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget fadeOut(BuildContext context, int index) {
    return CardArticle(
      author: articMod.articles![index].author.toString(),
      date: getFormatedDate(articMod.articles![index].publishedAt.toString()),
      urlImage: articMod.articles![index].urlToImage.toString(),
      source: articMod.articles![index].source.toString(),
      title: articMod.articles![index].title.toString(),
      url: articMod.articles![index].url.toString(),
    );
  }
}
