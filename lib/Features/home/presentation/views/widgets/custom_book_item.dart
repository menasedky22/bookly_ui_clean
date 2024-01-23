import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    log(image);
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: image,
          //imageUrl: ,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
// Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: Colors.red,
//             image: const DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage(
//                 AssetsData.testImage,
//               ),
//             )),
//       ),