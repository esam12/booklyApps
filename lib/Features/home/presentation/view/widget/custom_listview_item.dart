import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
