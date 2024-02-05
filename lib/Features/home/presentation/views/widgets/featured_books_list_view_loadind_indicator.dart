import 'package:bookly/core/widgets/custom_fading_widget.dart';
import 'package:flutter/material.dart';

import 'custom_book_image_loading_indicator.dart';

class FeaturedBookListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBookListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
