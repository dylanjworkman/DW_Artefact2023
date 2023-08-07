import 'controller/search_controller.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/presentation/home_page/home_page.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_image.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_title.dart';
import 'package:dw_artefact/widgets/app_bar/custom_app_bar.dart';
import 'package:dw_artefact/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(249),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse284,
                                height: getVerticalSize(249),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(
                                        left: 28, top: 10, right: 37),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(24),
                                              leadingWidth: 60,
                                              leading: AppbarImage(
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(left: 36),
                                                  onTap: () {
                                                    onTapArrowleft2();
                                                  }),
                                              centerTitle: true,
                                              title: AppbarTitle(
                                                  text: "lbl_search".tr),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    svgPath: ImageConstant
                                                        .imgOverflowmenu,
                                                    margin: getMargin(
                                                        left: 37, right: 37))
                                              ]),
                                          Container(
                                              width: getHorizontalSize(206),
                                              margin:
                                                  getMargin(left: 9, top: 24),
                                              child: Text(
                                                  "msg_search_for_content".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSearch,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(top: 10))
                                        ])))
                          ])),
                      SizedBox(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite)
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.History:
        return "/";
      case BottomBarEnum.Favourite:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft2() {
    Get.back();
  }
}
