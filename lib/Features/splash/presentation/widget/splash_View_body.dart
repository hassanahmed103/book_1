import 'package:book_1/Features/splash/presentation/widget/slinge_animation.dart';
import 'package:book_1/core/utlis/asset_constant.dart';
import 'package:book_1/core/utlis/routes_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 7,
        ),
        TextSlineAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}

/* Get.to(()=>const Home(),transition: Transition.fadeIn,duration: kTransitilonDuration);*/ /* Get.to(()=>const Home(),transition: Transition.fadeIn,duration: kTransitilonDuration);*/
