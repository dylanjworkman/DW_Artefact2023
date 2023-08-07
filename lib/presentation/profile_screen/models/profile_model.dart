import 'package:get/get.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfileItemModel>> profileItemList =
      Rx(List.generate(2, (index) => ProfileItemModel()));
}
