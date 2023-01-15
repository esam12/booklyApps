import 'package:bookly/Features/Splash/presentation/view/widget/splashViewbody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SplashViewbody(),
    );
  }
}