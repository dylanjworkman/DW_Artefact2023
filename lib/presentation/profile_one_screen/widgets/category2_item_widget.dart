import '../models/category2_item_model.dart';
import 'package:dw_artefact/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category2ItemWidget extends StatelessWidget {
  Category2ItemWidget(
    this.category2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Category2ItemModel category2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: getPadding(
            left: 12,
            right: 12,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            category2ItemModelObj.badgeTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: appTheme.blueGray500,
              fontSize: getFontSize(
                12,
              ),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          selected: category2ItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blueGray500.withOpacity(0.2),
          shape: category2ItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blueGray500,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      13,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blueGray500,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      13,
                    ),
                  ),
                ),
          onSelected: (value) {
            category2ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
