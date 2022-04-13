import 'package:auto_route/auto_route.dart';
import 'package:ecommers_mobile/app/pages/login_page.dart';
import 'package:ecommers_mobile/app/pages/main_page.dart';
import 'package:ecommers_mobile/app/pages/register_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/login',
      page: LoginPage,
      name: 'LoginRoute',
      initial: true,
    ),
    // AutoRoute(
    //   path: '/contacts',
    //   page: ContactsPage,
    //   name: 'ContactsRoute',
    // ),
    // AutoRoute(
    //   path: '/aboutUs',
    //   page: AboutUsPage,
    //   name: 'AboutUsRoute',
    // ),
    AutoRoute(
      path: '/register',
      page: RegisterPage,
      name: 'RegisterRoute',
    ),
    // AutoRoute(
    //   path: '/admin',
    //   page: AdminPanelPage,
    //   name: 'AdminPanelRoute',
    // ),
    AutoRoute(
      path: '/home',
      page: MainPage,
      name: 'MainRoute',
    ),
    // AutoRoute(
    //   path: '/vinyl',
    //   page: VinylPage,
    //   name: 'VinylRoute',
    // ),
    // AutoRoute(
    //   path: '/acoustics',
    //   page: AcousticsPage,
    //   name: 'AcousticsRoute',
    // ),
    // AutoRoute(
    //   path: '/accessories',
    //   page: AccessoriesPage,
    //   name: 'AccessoriesRoute',
    // ),
    // AutoRoute(
    //   path: '/news',
    //   page: NewsPage,
    //   name: 'NewsRoute',
    // ),
    // AutoRoute(
    //   path: '/vinyl_details',
    //   page: VinylDetailed,
    //   name: 'VinylDetailedRoute',
    // ),
    // AutoRoute(
    //   path: '/acoustics_details',
    //   page: AcousticsDetailed,
    //   name: 'AcousticsDetailedRoute',
    // ),
    // AutoRoute(
    //   path: '/accessories_details',
    //   page: AccessoriesDetailed,
    //   name: 'AccessoriesDetailedRoute',
    // ),
    // AutoRoute(
    //   path: '/news_details',
    //   page: NewsDetailed,
    //   name: 'NewsDetailedRoute',
    // ),
  ],
)
class $AppRouter {}
