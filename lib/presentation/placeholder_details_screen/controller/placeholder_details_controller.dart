import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/presentation/placeholder_details_screen/models/placeholder_details_model.dart';

/// A controller class for the PlaceholderDetailsScreen.
///
/// This class manages the state of the PlaceholderDetailsScreen, including the
/// current placeholderDetailsModelObj
class PlaceholderDetailsController extends GetxController {
  Rx<PlaceholderDetailsModel> placeholderDetailsModelObj =
      PlaceholderDetailsModel().obs;
}
