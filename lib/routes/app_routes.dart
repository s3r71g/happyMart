import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/presentation/flash_circleicon_screen/flash_circleicon_screen.dart';
import 'package:saraag_s_happymart/presentation/flash_icon_pagefill_screen/flash_icon_pagefill_screen.dart';
import 'package:saraag_s_happymart/presentation/flash_icon_page_screen/flash_icon_page_screen.dart';
import 'package:saraag_s_happymart/presentation/flash_icon_page_one_screen/flash_icon_page_one_screen.dart';
import 'package:saraag_s_happymart/presentation/flash_icon_page_two_screen/flash_icon_page_two_screen.dart';
import 'package:saraag_s_happymart/presentation/iphone_14_pro_max_two_screen/iphone_14_pro_max_two_screen.dart';
import 'package:saraag_s_happymart/presentation/categoriespaige_screen/categoriespaige_screen.dart';
import 'package:saraag_s_happymart/presentation/catagories_2_beverages_container_screen/catagories_2_beverages_container_screen.dart';
import 'package:saraag_s_happymart/presentation/upi_checkout_screen/upi_checkout_screen.dart';
import 'package:saraag_s_happymart/presentation/cart_screen/cart_screen.dart';
import 'package:saraag_s_happymart/presentation/catagories_3_health_and_hygiene_screen/catagories_3_health_and_hygiene_screen.dart';
import 'package:saraag_s_happymart/presentation/catagories_4_veggies_screen/catagories_4_veggies_screen.dart';
import 'package:saraag_s_happymart/presentation/catagories_1_health_and_hygiene_screen/catagories_1_health_and_hygiene_screen.dart';
import 'package:saraag_s_happymart/presentation/flash_circleicon_one_screen/flash_circleicon_one_screen.dart';
import 'package:saraag_s_happymart/presentation/explore_screen/explore_screen.dart';
import 'package:saraag_s_happymart/presentation/welcome_screen/welcome_screen.dart';
import 'package:saraag_s_happymart/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String flashCircleiconScreen = '/flash_circleicon_screen';

  static const String flashIconPagefillScreen = '/flash_icon_pagefill_screen';

  static const String flashIconPageScreen = '/flash_icon_page_screen';

  static const String flashIconPageOneScreen = '/flash_icon_page_one_screen';

  static const String flashIconPageTwoScreen = '/flash_icon_page_two_screen';

  static const String homePage = '/home_page';

  static const String iphone14ProMaxTwoScreen = '/iphone_14_pro_max_two_screen';

  static const String categoriespaigeScreen = '/categoriespaige_screen';

  static const String catagories2BeveragesPage = '/catagories_2_beverages_page';

  static const String catagories2BeveragesContainerScreen =
      '/catagories_2_beverages_container_screen';

  static const String upiCheckoutScreen = '/upi_checkout_screen';

  static const String cartScreen = '/cart_screen';

  static const String catagories3HealthAndHygieneScreen =
      '/catagories_3_health_and_hygiene_screen';

  static const String catagories4VeggiesScreen = '/catagories_4_veggies_screen';

  static const String catagories1HealthAndHygieneScreen =
      '/catagories_1_health_and_hygiene_screen';

  static const String flashCircleiconOneScreen = '/flash_circleicon_one_screen';

  static const String exploreScreen = '/explore_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    flashCircleiconScreen: (context) => FlashCircleiconScreen(),
    flashIconPagefillScreen: (context) => FlashIconPagefillScreen(),
    flashIconPageScreen: (context) => FlashIconPageScreen(),
    flashIconPageOneScreen: (context) => FlashIconPageOneScreen(),
    flashIconPageTwoScreen: (context) => FlashIconPageTwoScreen(),
    iphone14ProMaxTwoScreen: (context) => Iphone14ProMaxTwoScreen(),
    categoriespaigeScreen: (context) => CategoriespaigeScreen(),
    catagories2BeveragesContainerScreen: (context) =>
        Catagories2BeveragesContainerScreen(),
    upiCheckoutScreen: (context) => UpiCheckoutScreen(),
    cartScreen: (context) => CartScreen(),
    catagories3HealthAndHygieneScreen: (context) =>
        Catagories3HealthAndHygieneScreen(),
    catagories4VeggiesScreen: (context) => Catagories4VeggiesScreen(),
    catagories1HealthAndHygieneScreen: (context) =>
        Catagories1HealthAndHygieneScreen(),
    flashCircleiconOneScreen: (context) => FlashCircleiconOneScreen(),
    exploreScreen: (context) => ExploreScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
