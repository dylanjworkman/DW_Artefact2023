import 'package:get/get.dart';
import 'category_item_model.dart';
import 'placeholder_item_model.dart';

/// This class defines the variables used in the [placeholder_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaceholderDetailsModel {
  Rx<List<CategoryItemModel>> categoryItemList =
      Rx(List.generate(4, (index) => CategoryItemModel()));

  Rx<List<PlaceholderItemModel>> placeholderItemList =
      Rx(List.generate(3, (index) => PlaceholderItemModel()));
}
