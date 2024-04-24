part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static Future<String> get INITIAL async {
    return Routes.SPLASH;
  }

  static const SPLASH = _Paths.SPLASH;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const SIGNUP = _Paths.SIGNUP;
  static const LOGIN = _Paths.LOGIN;
  static const FORGOTPASSWORD = _Paths.FORGOTPASSWORD;
  static const HOME = _Paths.HOME;
  static const TEST_PAGE = _Paths.TEST_PAGE;
  static const SEARCH = _Paths.SEARCH;
  static const SAVED = _Paths.SAVED;
  static const CART = _Paths.CART;
  static const ACCOUNT = _Paths.ACCOUNT;
  static const MAIN = _Paths.MAIN;
  static const DETAILS = _Paths.DETAILS;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = "/splash";
  static const ONBOARDING = "/onboarding";
  static const SIGNUP = "/sign_up";
  static const LOGIN = "/login";
  static const FORGOTPASSWORD = "/forgot_password";
  static const HOME = "/home";
  static const TEST_PAGE = '/test-page';
  static const SEARCH = '/search';
  static const SAVED = '/saved';
  static const CART = '/cart';
  static const ACCOUNT = '/account';
  static const MAIN = '/main';
  static const DETAILS = '/details';
}
