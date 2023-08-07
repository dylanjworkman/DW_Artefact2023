import 'package:get/get.dart';
import 'listbooks_item_model.dart';
import 'listbooks1_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ListbooksItemModel>> listbooksItemList =
      Rx(List.generate(3, (index) => ListbooksItemModel()));

  Rx<List<Listbooks1ItemModel>> listbooks1ItemList =
      Rx(List.generate(3, (index) => Listbooks1ItemModel()));
}
