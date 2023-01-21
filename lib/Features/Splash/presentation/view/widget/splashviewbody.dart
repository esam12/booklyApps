import 'package:bookly/Features/Splash/presentation/view/widget/slidingtext.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slidingAnimation;

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationcontroller);
    animationcontroller.forward();
  }

  void goToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.to(const HomeView(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 250)),
    );
  }
}
