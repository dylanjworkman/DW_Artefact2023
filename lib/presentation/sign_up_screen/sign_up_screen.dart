import 'controller/sign_up_controller.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/widgets/custom_elevated_button.dart';
import 'package:dw_artefact/widgets/custom_icon_button.dart';
import 'package:dw_artefact/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

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
                          height: getVerticalSize(225),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse28,
                                height: getVerticalSize(225),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: getVerticalSize(166),
                                    width: getHorizontalSize(278),
                                    margin: getMargin(left: 41, bottom: 2),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProtomedialogo,
                                              height: getVerticalSize(139),
                                              width: getHorizontalSize(278),
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  width: getHorizontalSize(272),
                                                  child: Text(
                                                      "msg_this_is_a_design".tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmall12)))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 41, top: 3),
                              child: Text("msg_welcome_to_proto".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleMediumBlack900))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(274),
                              margin: getMargin(left: 41, top: 5, right: 59),
                              child: Text("msg_an_entertainment".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.headlineLarge))),
                      CustomElevatedButton(
                          text: "lbl_sign_up".tr,
                          margin: getMargin(left: 40, top: 29, right: 40),
                          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, getVerticalSize(56)))),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700),
                      CustomOutlinedButton(
                          text: "lbl_skip".tr,
                          margin: getMargin(left: 40, top: 16, right: 40),
                          buttonStyle: CustomButtonStyles.outlinePrimary
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite,
                                          getVerticalSize(56)))),
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_already_have_an".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyMediumBlack900),
                                Padding(
                                    padding: getPadding(left: 6),
                                    child: Text("lbl_sign_in".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBluegray700))
                              ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_or_login_with".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMediumBluegray800)),
                      GestureDetector(
                          onTap: () {
                            onTapSocmedlogin();
                          },
                          child: Padding(
                              padding: getPadding(top: 18, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 56,
                                        width: 87,
                                        padding: getPadding(all: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLogosfacebook)),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 18),
                                        color: appTheme.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    theme.colorScheme.primary,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        child: Container(
                                            height: getVerticalSize(56),
                                            width: getHorizontalSize(87),
                                            padding: getPadding(
                                                left: 31,
                                                top: 16,
                                                right: 31,
                                                bottom: 16),
                                            decoration: AppDecoration.outline
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLogosgoogle,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center)
                                            ])))
                                  ])))
                    ]))));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeContainerScreen.
  onTapSocmedlogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
