part of 'package:news_app/ui/home/home_provider/home_provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> implements AbstractHomeClass {
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
  @override
  void initState() {
    super.initState();
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
                articMod = state.rest;
                listArticle = articMod!.articles!;
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
              physics: BouncingScrollPhysics(),
              slivers: [
                CustomSliverAppBar(
                  title: 'Home',
                ),
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
                              itemCount: listArticle.length > 3
                                  ? 4
                                  : listArticle.length,
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
                              }),
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
