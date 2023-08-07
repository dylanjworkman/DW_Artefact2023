import '../controller/history_controller.dart';
import '../models/history_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse283,
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
