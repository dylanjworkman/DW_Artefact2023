import '../controller/placeholder_details_controller.dart';
import '../models/placeholder_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaceholderItemWidget extends StatelessWidget {
  PlaceholderItemWidget(
    this.placeholderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaceholderItemModel placeholderItemModelObj;

  var controller = Get.find<PlaceholderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgTicket,
          height: getSize(
            48,
          ),
          width: getSize(
            48,
          ),
        ),
        Container(
          height: getVerticalSize(
            36,
          ),
          width: getHorizontalSize(
            91,
          ),
          margin: getMargin(
            left: 20,
            top: 3,
            bottom: 8,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "lbl_placeholder".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: getPadding(
                    right: 14,
                  ),
                  child: Obx(
                    () => Text(
                      placeholderItemModelObj.placeholdervaluTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgCamera,
                height: getSize(
                  16,
                ),
                width: getSize(
                  16,
                ),
                alignment: Alignment.bottomLeft,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgFavorite,
                height: getSize(
                  16,
                ),
                width: getSize(
                  16,
                ),
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 6,
            top: 26,
            bottom: 6,
          ),
          child: Obx(
            () => Text(
              placeholderItemModelObj.upvotesTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }
}
