import 'package:go_router/go_router.dart';
import 'package:isupply_hackathon_project/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static const String homeView = '/homeView';
  static final appRoutes = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: homeView, builder: (context, state) => HomeView()),
    ],
  );
}
