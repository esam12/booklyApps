import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}