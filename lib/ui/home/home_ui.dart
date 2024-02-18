part of 'package:news_app/ui/home/home_provider/home_provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> implements AbstractHomeClass {
  late ScrollController _scrollController;
  bool lastStatus = true;
  double height = 390;
  @override
  List<ProductModel> electronics = [];

  @override
  String? image;

  @override
  List<String> get items => [
        "Jewelery",
        "Electronics",
        "Men's clothing",
        "Women's clothing",
      ];

  @override
  List<ProductModel> jewelery = [];

  @override
  List<ProductModel> mensClothing = [];

  @override
  List<Articles> listArticle = [];

  @override
  Login logs = Login();

  @override
  int current = 0;

  @override
  TopHeadlinesModels? articMod;

  @override
  TopHeadlinesModels? newsModel;

  @override
  ProductModel prod = ProductModel();

  @override
  List<ProductModel> womansClothing = [];

  @override
  TopHeadlinesModels get mockData => topHeadlinesModel;

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (height - kToolbarHeight);
  }

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bloc(dynamic event) {
    BlocProvider.of<ProductBloc>(context).add(event);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductBloc, ProductState>(
          listener: (context, state) async {
            if (state is SetupProductComplete) {
              setState(() {
                jewelery = state.jewelry;
                electronics = state.electronics;
                mensClothing = state.mensClothing;
                womansClothing = state.womansClothing;
                logs = state.log;
                image = state.log.image;
              });
            }
            if (state is ProductFailedShow) {
              context.failSnackbar(state.msg);
            }
          },
        ),
        BlocListener<HeadlinesBloc, HeadlinesState>(
          listener: (context, state) {
            if (state is SetupHeadlinesComplete) {
              setState(() {
                newsModel = state.res;
                print(newsModel);
                articMod = state.rest;
                print(articMod);
                listArticle = articMod!.articles!;
                print(listArticle);
              });
            }
          },
        ),
      ],
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is SetupProductProgress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return CustomScrollView(
              controller: _scrollController,
              physics: BouncingScrollPhysics(),
              slivers: [
                CustomSliverAppBar(
                  title: 'Home',
                ),
                // SliverAppBar(
                //   leading: const BackButton(),
                //   // leading: _isShrink ? const BackButton() : null,
                //   pinned: true,
                //   floating: true,
                //   backgroundColor: Colors.white,
                //   expandedHeight: height,
                //   flexibleSpace: FlexibleSpaceBar(
                //     title: _isShrink
                //         ? const Text('pmatatias Statistic',
                //             style: TextStyle(fontSize: 16))
                //         : const SizedBox(),
                //     // background: TabButtonRow(
                //     //   current: current,
                //     //   items: items,
                //     //   onTap: (index) {
                //     //     setState(() {
                //     //       current = index;
                //     //     });
                //     //   },
                //     // ),
                //   ),
                // ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(height: 20),
                      TabButtonRow(
                        current: current,
                        items: items,
                        onTap: (index) {
                          setState(() {
                            current = index;
                          });
                        },
                      ),
                      SizedBox(height: 2.h),
                      for (int i = 0; i < items.length; i++)
                        ProductListContainer(
                          title: items[i],
                          products: listCondition(i),
                          current: current,
                          index: i,
                        ),
                      SizedBox(height: 2.h),
                      HomeContainer(
                        widget: CarouselSliderNews(
                          models: newsModel ?? mockData,
                        ),
                        title: 'Hot News',
                      ),
                      SizedBox(height: 20),
                      HomeContainer(
                        widget: Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                                listArticle.length > 3 ? 4 : listArticle.length,
                            itemBuilder: (context, index) {
                              return AnimationConfiguration.staggeredList(
                                position: index,
                                duration: const Duration(milliseconds: 375),
                                child: SlideAnimation(
                                  verticalOffset: 30.0,
                                  child: FadeInAnimation(
                                    child: ListViewArticle(
                                        listArticle: listArticle,
                                        articMod: articMod,
                                        context: context,
                                        index: index),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        title: 'News Article',
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  @override
  set items(List<String> _items) {}

  List<ProductModel> listCondition(int index) {
    switch (index) {
      case 0:
        return jewelery;
      case 1:
        return electronics;
      case 2:
        return mensClothing;
      default:
        return womansClothing;
    }
  }
}
