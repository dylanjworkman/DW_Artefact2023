import '../placeholder_details_screen/widgets/category_item_widget.dart';
import '../placeholder_details_screen/widgets/placeholder_item_widget.dart';
import 'controller/placeholder_details_controller.dart';
import 'models/category_item_model.dart';
import 'models/placeholder_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/presentation/home_page/home_page.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_image.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_title.dart';
import 'package:dw_artefact/widgets/app_bar/custom_app_bar.dart';
import 'package:dw_artefact/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class PlaceholderDetailsScreen extends GetWidget<PlaceholderDetailsController> {
  const PlaceholderDetailsScreen({Key? key}) : super(key: key);

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
                          height: getVerticalSize(316),
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
                                                      .imgEllipse28249x375,
                                                  height: getVerticalSize(249),
                                                  width: getHorizontalSize(375),
                                                  alignment: Alignment.center),
                                              CustomAppBar(
                                                  height: getVerticalSize(33),
                                                  leadingWidth: 60,
                                                  leading: AppbarImage(
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      margin:
                                                          getMargin(left: 36),
                                                      onTap: () {
                                                        onTapArrowleft();
                                                      }),
                                                  centerTitle: true,
                                                  title: AppbarTitle(
                                                      text:
                                                          "msg_placeholder_title"
                                                              .tr),
                                                  actions: [
                                                    AppbarImage(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        svgPath: ImageConstant
                                                            .imgOverflowmenu,
                                                        margin: getMargin(
                                                            left: 37,
                                                            right: 37))
                                                  ])
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage6260x260,
                                    height: getSize(260),
                                    width: getSize(260),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(40)),
                                    alignment: Alignment.bottomCenter)
                              ])),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(left: 22, right: 22),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 13),
                                            child: Text("lbl_placeholder".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 1),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCamera,
                                                  height: getSize(26),
                                                  width: getSize(26)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 2),
                                                  child: Text(
                                                      "lbl_13_1k_views".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .bodyMedium)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFavorite,
                                                  height: getSize(26),
                                                  width: getSize(26),
                                                  margin: getMargin(left: 13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 4),
                                                  child: Text(
                                                      "lbl_2_3k_upvotes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .bodyMedium))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Obx(() => Wrap(
                                                runSpacing: getVerticalSize(5),
                                                spacing: getHorizontalSize(5),
                                                children: List<Widget>.generate(
                                                    controller
                                                        .placeholderDetailsModelObj
                                                        .value
                                                        .categoryItemList
                                                        .value
                                                        .length, (index) {
                                                  CategoryItemModel model =
                                                      controller
                                                          .placeholderDetailsModelObj
                                                          .value
                                                          .categoryItemList
                                                          .value[index];
                                                  return CategoryItemWidget(
                                                      model);
                                                })))),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 12),
                                            child: Text(
                                                "msg_placeholder_media".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12)),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 46),
                                            child: Text(
                                                "msg_similar_to_placeholder".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 9, top: 9, right: 94),
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
                                                            .placeholderDetailsModelObj
                                                            .value
                                                            .placeholderItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          PlaceholderItemModel
                                                              model = controller
                                                                  .placeholderDetailsModelObj
                                                                  .value
                                                                  .placeholderItemList
                                                                  .value[index];
                                                          return PlaceholderItemWidget(
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
  onTapArrowleft() {
    Get.back();
  }
}
