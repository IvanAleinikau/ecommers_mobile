import 'package:ecommers_mobile/app/pages/news/widget/news_widget.dart';
import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/core/blocs/news_bloc/news_cubit.dart';
import 'package:ecommers_mobile/core/blocs/news_bloc/news_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _controller = ScrollController();

  late NewsCubit _cubit;

  @override
  void initState() {
    _cubit = NewsCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      appBar: AppBar(
        title: const Text(
          'Новости',
          style: Style.montserrat20w400,
        ),
        backgroundColor: const Color(0xFF7D4848),
      ),
      drawer: const AppDrawer(),
      body: BlocConsumer<NewsCubit, NewsState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF7D4848)),
            );
          } else {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: state.newsList.length,
              itemBuilder: (context, index) {
                return NewsWidget(news: state.newsList[index]);
              },
            );
          }
        },
        listener: (context, state) {},
      ),
    );
  }
}
