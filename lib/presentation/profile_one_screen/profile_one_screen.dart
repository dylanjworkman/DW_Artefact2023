import '../profile_one_screen/widgets/category2_item_widget.dart';
import '../profile_one_screen/widgets/profile_one_item_widget.dart';
import 'controller/profile_one_controller.dart';
import 'models/category2_item_model.dart';
import 'models/profile_one_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/presentation/home_page/home_page.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_image.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_title.dart';
import 'package:dw_artefact/widgets/app_bar/custom_app_bar.dart';
import 'package:dw_artefact/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileOneScreen extends GetWidget<ProfileOneController> {
  const ProfileOneScreen({Key? key}) : super(key: key);

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
                          height: getVerticalSize(273),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                        height: getVerticalSize(249),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse281,
                                                  height: getVerticalSize(249),
                                                  width: getHorizontalSize(375),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 36,
                                                          top: 10,
                                                          right: 37),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomAppBar(
                                                                height:
                                                                    getVerticalSize(
                                                                        24),
                                                                leadingWidth:
                                                                    60,
                                                                leading:
                                                                    AppbarImage(
                                                                        height: getSize(
                                                                            24),
                                                                        width: getSize(
                                                                            24),
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowleft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                36),
                                                                        onTap:
                                                                            () {
                                                                          onTapArrowleft1();
                                                                        }),
                                                                centerTitle:
                                                                    true,
                                                                title: AppbarTitle(
                                                                    text:
                                                                        "msg_user_name_s_profile"
                                                                            .tr),
                                                                actions: [
                                                                  AppbarImage(
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width: getSize(
                                                                          24),
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgOverflowmenu,
                                                                      margin: getMargin(
                                                                          left:
                                                                              37,
                                                                          right:
                                                                              37))
                                                                ]),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMohammadreza,
                                                                height: getSize(
                                                                    120),
                                                                width: getSize(
                                                                    120),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            60)),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            54))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                        width: getHorizontalSize(302),
                                        child: Text("msg_user_information".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12)))
                              ])),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(left: 21, right: 21),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 2, top: 20),
                                            child: Text(
                                                "msg_preferred_categories".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Obx(() => Wrap(
                                                runSpacing: getVerticalSize(5),
                                                spacing: getHorizontalSize(5),
                                                children: List<Widget>.generate(
                                                    controller
                                                        .profileOneModelObj
                                                        .value
                                                        .category2ItemList
                                                        .value
                                                        .length, (index) {
                                                  Category2ItemModel model =
                                                      controller
                                                          .profileOneModelObj
                                                          .value
                                                          .category2ItemList
                                                          .value[index];
                                                  return Category2ItemWidget(
                                                      model);
                                                })))),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, top: 27),
                                            child: Text(
                                                "msg_based_on_categories".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 6, top: 8, right: 98),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      11));
                                                        },
                                                        itemCount: controller
                                                            .profileOneModelObj
                                                            .value
                                                            .profileOneItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ProfileOneItemModel
                                                              model = controller
                                                                  .profileOneModelObj
                                                                  .value
                                                                  .profileOneItemList
                                                                  .value[index];
                                                          return ProfileOneItemWidget(
                                                              model);
                                                        }))))
                                      ]))))
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
  onTapArrowleft1() {
    Get.back();
  }
}
