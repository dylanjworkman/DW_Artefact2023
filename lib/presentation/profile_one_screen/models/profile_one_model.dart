import 'package:get/get.dart';
import 'category2_item_model.dart';
import 'profile_one_item_model.dart';

/// This class defines the variables used in the [profile_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileOneModel {
  Rx<List<Category2ItemModel>> category2ItemList =
      Rx(List.generate(4, (index) => Category2ItemModel()));

  Rx<List<ProfileOneItemModel>> profileOneItemList =
      Rx(List.generate(5, (index) => ProfileOneItemModel()));
}
