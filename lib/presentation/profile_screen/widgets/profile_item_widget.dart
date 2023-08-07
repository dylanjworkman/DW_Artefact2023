import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse282,
        height: getVerticalSize(
          249,
        ),
        width: getHorizontalSize(
          375,
        ),
      ),
    );
  }
}
