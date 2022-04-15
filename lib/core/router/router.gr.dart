// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../app/pages/about_us_page.dart' as _i3;
import '../../app/pages/accessories/widgets/accessories_details.dart' as _i9;
import '../../app/pages/acoustics/widgets/acoustics_detailed.dart' as _i8;
import '../../app/pages/contacts_page.dart' as _i2;
import '../../app/pages/login_page.dart' as _i1;
import '../../app/pages/main_page.dart' as _i5;
import '../../app/pages/news/news_page.dart' as _i6;
import '../../app/pages/news/widget/news_detailed.dart' as _i10;
import '../../app/pages/register_page.dart' as _i4;
import '../../app/pages/vinyl/widgets/vinyl_detailed.dart' as _i7;
import '../model/accessories_model.dart' as _i15;
import '../model/acoustics_model.dart' as _i14;
import '../model/news_model.dart' as _i16;
import '../model/vinyl_model.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    ContactsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ContactsPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutUsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterPage());
    },
    MainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MainPage());
    },
    NewsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NewsPage());
    },
    VinylDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<VinylDetailedRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.VinylDetailed(key: args.key, vinyl: args.vinyl));
    },
    AcousticsDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AcousticsDetailedRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.AcousticsDetailed(key: args.key, acoustics: args.acoustics));
    },
    AccessoriesDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AccessoriesDetailedRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.AccessoriesDetailed(
              key: args.key, accessories: args.accessories));
    },
    NewsDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailedRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.NewsDetailed(key: args.key, news: args.news));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i11.RouteConfig(LoginRoute.name, path: '/login'),
        _i11.RouteConfig(ContactsRoute.name, path: '/contacts'),
        _i11.RouteConfig(AboutUsRoute.name, path: '/aboutUs'),
        _i11.RouteConfig(RegisterRoute.name, path: '/register'),
        _i11.RouteConfig(MainRoute.name, path: '/home'),
        _i11.RouteConfig(NewsRoute.name, path: '/news'),
        _i11.RouteConfig(VinylDetailedRoute.name, path: '/vinyl_details'),
        _i11.RouteConfig(AcousticsDetailedRoute.name,
            path: '/acoustics_details'),
        _i11.RouteConfig(AccessoriesDetailedRoute.name,
            path: '/accessories_details'),
        _i11.RouteConfig(NewsDetailedRoute.name, path: '/news_details')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ContactsPage]
class ContactsRoute extends _i11.PageRouteInfo<void> {
  const ContactsRoute() : super(ContactsRoute.name, path: '/contacts');

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [_i3.AboutUsPage]
class AboutUsRoute extends _i11.PageRouteInfo<void> {
  const AboutUsRoute() : super(AboutUsRoute.name, path: '/aboutUs');

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/home');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i6.NewsPage]
class NewsRoute extends _i11.PageRouteInfo<void> {
  const NewsRoute() : super(NewsRoute.name, path: '/news');

  static const String name = 'NewsRoute';
}

/// generated route for
/// [_i7.VinylDetailed]
class VinylDetailedRoute extends _i11.PageRouteInfo<VinylDetailedRouteArgs> {
  VinylDetailedRoute({_i12.Key? key, required _i13.Vinyl vinyl})
      : super(VinylDetailedRoute.name,
            path: '/vinyl_details',
            args: VinylDetailedRouteArgs(key: key, vinyl: vinyl));

  static const String name = 'VinylDetailedRoute';
}

class VinylDetailedRouteArgs {
  const VinylDetailedRouteArgs({this.key, required this.vinyl});

  final _i12.Key? key;

  final _i13.Vinyl vinyl;

  @override
  String toString() {
    return 'VinylDetailedRouteArgs{key: $key, vinyl: $vinyl}';
  }
}

/// generated route for
/// [_i8.AcousticsDetailed]
class AcousticsDetailedRoute
    extends _i11.PageRouteInfo<AcousticsDetailedRouteArgs> {
  AcousticsDetailedRoute({_i12.Key? key, required _i14.Acoustics acoustics})
      : super(AcousticsDetailedRoute.name,
            path: '/acoustics_details',
            args: AcousticsDetailedRouteArgs(key: key, acoustics: acoustics));

  static const String name = 'AcousticsDetailedRoute';
}

class AcousticsDetailedRouteArgs {
  const AcousticsDetailedRouteArgs({this.key, required this.acoustics});

  final _i12.Key? key;

  final _i14.Acoustics acoustics;

  @override
  String toString() {
    return 'AcousticsDetailedRouteArgs{key: $key, acoustics: $acoustics}';
  }
}

/// generated route for
/// [_i9.AccessoriesDetailed]
class AccessoriesDetailedRoute
    extends _i11.PageRouteInfo<AccessoriesDetailedRouteArgs> {
  AccessoriesDetailedRoute(
      {_i12.Key? key, required _i15.Accessories accessories})
      : super(AccessoriesDetailedRoute.name,
            path: '/accessories_details',
            args: AccessoriesDetailedRouteArgs(
                key: key, accessories: accessories));

  static const String name = 'AccessoriesDetailedRoute';
}

class AccessoriesDetailedRouteArgs {
  const AccessoriesDetailedRouteArgs({this.key, required this.accessories});

  final _i12.Key? key;

  final _i15.Accessories accessories;

  @override
  String toString() {
    return 'AccessoriesDetailedRouteArgs{key: $key, accessories: $accessories}';
  }
}

/// generated route for
/// [_i10.NewsDetailed]
class NewsDetailedRoute extends _i11.PageRouteInfo<NewsDetailedRouteArgs> {
  NewsDetailedRoute({_i12.Key? key, required _i16.News news})
      : super(NewsDetailedRoute.name,
            path: '/news_details',
            args: NewsDetailedRouteArgs(key: key, news: news));

  static const String name = 'NewsDetailedRoute';
}

class NewsDetailedRouteArgs {
  const NewsDetailedRouteArgs({this.key, required this.news});

  final _i12.Key? key;

  final _i16.News news;

  @override
  String toString() {
    return 'NewsDetailedRouteArgs{key: $key, news: $news}';
  }
}
