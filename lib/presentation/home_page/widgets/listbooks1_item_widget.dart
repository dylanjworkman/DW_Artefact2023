import '../controller/home_controller.dart';
import '../models/listbooks1_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listbooks1ItemWidget extends StatelessWidget {
  Listbooks1ItemWidget(
    this.listbooks1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Listbooks1ItemModel listbooks1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        160,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: getSize(
              160,
            ),
            width: getSize(
              160,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 12,
            ),
            child: Text(
              "lbl_placeholder".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
