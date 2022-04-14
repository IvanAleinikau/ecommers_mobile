// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../../app/pages/accessories/widgets/accessories_details.dart' as _i6;
import '../../app/pages/acoustics/widgets/acoustics_detailed.dart' as _i5;
import '../../app/pages/login_page.dart' as _i1;
import '../../app/pages/main_page.dart' as _i3;
import '../../app/pages/register_page.dart' as _i2;
import '../../app/pages/vinyl/widgets/vinyl_detailed.dart' as _i4;
import '../model/accessories_model.dart' as _i12;
import '../model/acoustics_model.dart' as _i11;
import '../model/vinyl_model.dart' as _i10;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RegisterPage());
    },
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainPage());
    },
    VinylDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<VinylDetailedRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.VinylDetailed(key: args.key, vinyl: args.vinyl));
    },
    AcousticsDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AcousticsDetailedRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i5.AcousticsDetailed(key: args.key, acoustics: args.acoustics));
    },
    AccessoriesDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AccessoriesDetailedRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.AccessoriesDetailed(
              key: args.key, accessories: args.accessories));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i7.RouteConfig(LoginRoute.name, path: '/login'),
        _i7.RouteConfig(RegisterRoute.name, path: '/register'),
        _i7.RouteConfig(MainRoute.name, path: '/home'),
        _i7.RouteConfig(VinylDetailedRoute.name, path: '/vinyl_details'),
        _i7.RouteConfig(AcousticsDetailedRoute.name,
            path: '/acoustics_details'),
        _i7.RouteConfig(AccessoriesDetailedRoute.name,
            path: '/accessories_details')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/home');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.VinylDetailed]
class VinylDetailedRoute extends _i7.PageRouteInfo<VinylDetailedRouteArgs> {
  VinylDetailedRoute({_i9.Key? key, required _i10.Vinyl vinyl})
      : super(VinylDetailedRoute.name,
            path: '/vinyl_details',
            args: VinylDetailedRouteArgs(key: key, vinyl: vinyl));

  static const String name = 'VinylDetailedRoute';
}

class VinylDetailedRouteArgs {
  const VinylDetailedRouteArgs({this.key, required this.vinyl});

  final _i9.Key? key;

  final _i10.Vinyl vinyl;

  @override
  String toString() {
    return 'VinylDetailedRouteArgs{key: $key, vinyl: $vinyl}';
  }
}

/// generated route for
/// [_i5.AcousticsDetailed]
class AcousticsDetailedRoute
    extends _i7.PageRouteInfo<AcousticsDetailedRouteArgs> {
  AcousticsDetailedRoute({_i9.Key? key, required _i11.Acoustics acoustics})
      : super(AcousticsDetailedRoute.name,
            path: '/acoustics_details',
            args: AcousticsDetailedRouteArgs(key: key, acoustics: acoustics));

  static const String name = 'AcousticsDetailedRoute';
}

class AcousticsDetailedRouteArgs {
  const AcousticsDetailedRouteArgs({this.key, required this.acoustics});

  final _i9.Key? key;

  final _i11.Acoustics acoustics;

  @override
  String toString() {
    return 'AcousticsDetailedRouteArgs{key: $key, acoustics: $acoustics}';
  }
}

/// generated route for
/// [_i6.AccessoriesDetailed]
class AccessoriesDetailedRoute
    extends _i7.PageRouteInfo<AccessoriesDetailedRouteArgs> {
  AccessoriesDetailedRoute(
      {_i9.Key? key, required _i12.Accessories accessories})
      : super(AccessoriesDetailedRoute.name,
            path: '/accessories_details',
            args: AccessoriesDetailedRouteArgs(
                key: key, accessories: accessories));

  static const String name = 'AccessoriesDetailedRoute';
}

class AccessoriesDetailedRouteArgs {
  const AccessoriesDetailedRouteArgs({this.key, required this.accessories});

  final _i9.Key? key;

  final _i12.Accessories accessories;

  @override
  String toString() {
    return 'AccessoriesDetailedRouteArgs{key: $key, accessories: $accessories}';
  }
}
