import '../controller/placeholder_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlaceholderDetailsScreen.
///
/// This class ensures that the PlaceholderDetailsController is created when the
/// PlaceholderDetailsScreen is first loaded.
class PlaceholderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaceholderDetailsController());
  }
}
