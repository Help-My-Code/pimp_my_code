enum Routes {
  home,
  login,
  register,
  messaging,
  account,
}

extension RoutesExtension on Routes {
  String get path {
    switch (this) {
      case Routes.home:
        return '/';
      case Routes.login:
        return '/login';
      case Routes.register:
        return '/register';
      case Routes.messaging:
        return '/messaging';
      case Routes.account:
        return '/account';
    }
  }
}
