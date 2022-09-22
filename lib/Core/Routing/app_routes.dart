import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:your_chief/Core/Bindings/Auth/add_profile_photo_binding.dart';
import 'package:your_chief/Core/Bindings/Auth/auth_bindings.dart';
import 'package:your_chief/Core/Bindings/Auth/verify_account_binding.dart';
import 'package:your_chief/Core/Routing/route_names.dart';
import 'package:your_chief/View/Screens/Auth/add_profile_photo_screen.dart';
import 'package:your_chief/View/Screens/Auth/auth_screen.dart';
import 'package:your_chief/View/Screens/Auth/verify_account_screen.dart';
import 'package:your_chief/View/Screens/Error/page_not_found_screen.dart';
import 'package:your_chief/View/Screens/Home/main_screen.dart';
import 'package:your_chief/View/Screens/OnBoarding/onboarding_screen.dart';

import '../../View/Screens/Auth/account_verified_screen.dart';
import '../Bindings/Home/main_screen_binding.dart';

class AppRoutes {
  static const String initialRoute = AppRouteNames.onBoarding;
  static final List<GetPage> pages = [
    GetPage(
      name: AppRouteNames.onBoarding,
      page: () => const OnBoardingScreen(),
      //binding: AuthBindings(),
    ),
    GetPage(
      name: AppRouteNames.auth,
      page: () => const AuthScreen(),
      binding: AuthBindings(),
      transition: Transition.downToUp,
      curve: Curves.fastLinearToSlowEaseIn,
    ),
    GetPage(
      name: AppRouteNames.addProfilePhoto,
      page: () => const AddProfilePhotoScreen(),
      binding: AddProfilePhotoBindings(),
      transition: Transition.rightToLeft,
      curve: Curves.slowMiddle,
    ),
    GetPage(
      name: AppRouteNames.registerVerify,
      page: () => const VerifyAccountScreen(),
      binding: VerifyAccountBinding(),
      transition: Transition.rightToLeft,
      curve: Curves.slowMiddle,
    ),
    GetPage(
      name: AppRouteNames.verificationComplete,
      page: () => const AccountVerifiedScreen(),
      //binding: VerifyAccountBinding(),
      transition: Transition.upToDown,
      curve: Curves.slowMiddle,
    ),
    GetPage(
      name: AppRouteNames.forgetPassword,
      page: () => const AuthScreen(),
    ),
    GetPage(
      name: AppRouteNames.resetPassword,
      page: () => const AuthScreen(),
    ),
    GetPage(
      name: AppRouteNames.home,
      page: () => const MainScreen(),
      binding: MainScreenBinding(),
      transition: Transition.fade,
      curve: Curves.slowMiddle,
    ),
    GetPage(
      name: AppRouteNames.error,
      page: () => const PageNotFoundScreen(),
      transition: Transition.upToDown,
      curve: Curves.fastLinearToSlowEaseIn,
    ),
  ];
}
