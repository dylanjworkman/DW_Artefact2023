import '../controller/home_controller.dart';
import '../models/listbooks_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbooksItemWidget extends StatelessWidget {
  ListbooksItemWidget(
    this.listbooksItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListbooksItemModel listbooksItemModelObj;

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
            imagePath: ImageConstant.imgImage6,
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
