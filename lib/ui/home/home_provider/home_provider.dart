import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_bloc.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_event.dart';
import 'package:news_app/bloc/top_headlines/top_headlines_state.dart';
import 'package:news_app/helper/abstract_home_class.dart';
import 'package:news_app/helper/custom_AppBar.dart';
import 'package:news_app/helper/extension.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/model/product_model.dart';
import 'package:news_app/model/top_headline_model_mock.dart';
import 'package:news_app/model/top_headlines_models.dart';
import 'package:news_app/bloc/product/product_bloc.dart';
import 'package:news_app/bloc/product/product_event.dart';
import 'package:news_app/bloc/product/product_state.dart';
import 'package:news_app/ui/home/components/carousel_slider.dart';
import 'package:news_app/ui/home/components/listview_article.dart';
import 'package:news_app/ui/home/components/home_container.dart';
import 'package:news_app/ui/home/components/product_list_container.dart';
import 'package:news_app/ui/home/components/tab_button_row.dart';
import 'package:sizer/sizer.dart';

part 'package:news_app/ui/home/home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc()..add(SetupProductEvent()),
        ),
        BlocProvider(
          create: (context) => HeadlinesBloc()..add(SetupHeadlinesEvent()),
        ),
      ],
      child: Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
