import '../home_page/widgets/listbooks1_item_widget.dart';
import '../home_page/widgets/listbooks_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listbooks1_item_model.dart';
import 'models/listbooks_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/widgets/app_bar/appbar_image.dart';
import 'package:dw_artefact/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fill,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(239),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse28239x375,
                                height: getVerticalSize(239),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(top: 21),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(40),
                                              title: Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "msg_welcome_user_name"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleMediumSemiBold)),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    imagePath:
                                                        ImageConstant.imgUser,
                                                    margin: getMargin(
                                                        left: 24, right: 24),
                                                    onTap: () {
                                                      onTapUser();
                                                    })
                                              ]),
                                          Padding(
                                              padding: getPadding(top: 22),
                                              child: Row(children: [
                                                Text("lbl_categories".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900_1),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text(
                                                        "lbl_see_more".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleSmallPrimary))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Row(children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(51),
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 7,
                                                        right: 16,
                                                        bottom: 7),
                                                    decoration: AppDecoration
                                                        .txtFill
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder12),
                                                    child: Text("lbl_all".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodyLargeWhiteA700)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(96),
                                                    margin: getMargin(left: 12),
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 6,
                                                        right: 16,
                                                        bottom: 6),
                                                    decoration: AppDecoration
                                                        .txtFill1
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder12),
                                                    child: Text(
                                                        "lbl_lifestyle".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(84),
                                                    margin: getMargin(left: 12),
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 7,
                                                        right: 16,
                                                        bottom: 7),
                                                    decoration: AppDecoration
                                                        .txtFill1
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder12),
                                                    child: Text("lbl_health".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(87),
                                                    margin: getMargin(left: 12),
                                                    padding: getPadding(
                                                        top: 5, bottom: 5),
                                                    decoration: AppDecoration
                                                        .txtFill1
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder12),
                                                    child: Text(
                                                        "msg_shopping_and_commerce"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ]))
                                        ])))
                          ])),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTrending();
                                },
                                child: Padding(
                                    padding: getPadding(left: 21),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("lbl_currently_hot".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleMediumBlack900_1),
                                            Padding(
                                                padding: getPadding(bottom: 3),
                                                child: Text("lbl_see_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleSmallPrimary))
                                          ]),
                                          SizedBox(
                                              height: getVerticalSize(209),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      padding:
                                                          getPadding(top: 13),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    12));
                                                      },
                                                      itemCount: controller
                                                          .homeModelObj
                                                          .value
                                                          .listbooksItemList
                                                          .value
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListbooksItemModel
                                                            model = controller
                                                                .homeModelObj
                                                                .value
                                                                .listbooksItemList
                                                                .value[index];
                                                        return ListbooksItemWidget(
                                                            model);
                                                      })))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 21, top: 30, right: 31),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_recommendations".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900_1),
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: Text("lbl_see_more".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallPrimary))
                                        ]))),
                            SizedBox(
                                height: getVerticalSize(212),
                                child: Obx(() => ListView.separated(
                                    padding: getPadding(left: 21, top: 16),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          width: getHorizontalSize(12));
                                    },
                                    itemCount: controller.homeModelObj.value
                                        .listbooks1ItemList.value.length,
                                    itemBuilder: (context, index) {
                                      Listbooks1ItemModel model = controller
                                          .homeModelObj
                                          .value
                                          .listbooks1ItemList
                                          .value[index];
                                      return Listbooks1ItemWidget(model);
                                    })))
                          ])
                    ]))));
  }

  /// Navigates to the profileOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the profileOneScreen.
  onTapUser() {
    Get.toNamed(
      AppRoutes.profileOneScreen,
    );
  }

  /// Navigates to the placeholderDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the placeholderDetailsScreen.
  onTapTrending() {
    Get.toNamed(
      AppRoutes.placeholderDetailsScreen,
    );
  }
}
