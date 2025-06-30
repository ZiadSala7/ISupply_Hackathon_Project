import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => GoRouter.of(context).pushReplacement(AppRoutes.homeView),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(seconds: 2),
      child: Center(child: Image.asset(AppImages.imagesIsupplyLogo)),
    );
  }
}
