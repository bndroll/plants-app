import 'package:flutter/material.dart';

import 'featurred_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          const RecommendedPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          const RecommendedPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
        ],
      ),
    );
  }
}
