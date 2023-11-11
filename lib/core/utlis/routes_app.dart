import 'package:book_1/Features/home/presentation/view/home_view.dart';
import 'package:book_1/Features/search/presentation/view/search_view.dart';
import 'package:book_1/Features/splash/presentation/widget/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presentation/view/detalies_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBooksDetailsView = '/DetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const Home()),
      GoRoute(
          path: kBooksDetailsView,
          builder: (context, state) => const DetailsView()),
      GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
