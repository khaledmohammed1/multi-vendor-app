import 'package:flutter/material.dart';

import '../Widgets//bannerWidget/banner_widget.dart';
import '../Widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../Widgets/category_widget/category_widget.dart';
import '../Widgets/highlights/brand_highlight.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(.05),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            title: const Text("Shop_app"),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add_shopping_cart))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                  SearchWidget(),
                    BannerWidget(),
                   BrandHighlights(),
                    CategoryWidget(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }
}
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.fromLTRB(4, 0, 4, 0),
                  hintText: "Search in Shop App",
                  hintStyle:  TextStyle(color: Colors.grey),
                  prefixIcon:  Icon(Icons.search_outlined)
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
