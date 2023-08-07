import 'package:dw_artefact/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dw_artefact/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:dw_artefact/presentation/home_container_screen/home_container_screen.dart';
import 'package:dw_artefact/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:dw_artefact/presentation/placeholder_details_screen/placeholder_details_screen.dart';
import 'package:dw_artefact/presentation/placeholder_details_screen/binding/placeholder_details_binding.dart';
import 'package:dw_artefact/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:dw_artefact/presentation/profile_one_screen/binding/profile_one_binding.dart';
import 'package:dw_artefact/presentation/profile_screen/profile_screen.dart';
import 'package:dw_artefact/presentation/profile_screen/binding/profile_binding.dart';
import 'package:dw_artefact/presentation/history_screen/history_screen.dart';
import 'package:dw_artefact/presentation/history_screen/binding/history_binding.dart';
import 'package:dw_artefact/presentation/search_screen/search_screen.dart';
import 'package:dw_artefact/presentation/search_screen/binding/search_binding.dart';
import 'package:dw_artefact/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dw_artefact/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String placeholderDetailsScreen = '/placeholder_details_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String historyScreen = '/history_screen';

  static const String searchScreen = '/search_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: placeholderDetailsScreen,
      page: () => PlaceholderDetailsScreen(),
      bindings: [
        PlaceholderDetailsBinding(),
      ],
    ),
    GetPage(
      name: profileOneScreen,
      page: () => ProfileOneScreen(),
      bindings: [
        ProfileOneBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    )
  ];
}
