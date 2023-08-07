import 'package:dw_artefact/core/app_export.dart';
import 'package:dw_artefact/presentation/history_screen/models/history_model.dart';

/// A controller class for the HistoryScreen.
///
/// This class manages the state of the HistoryScreen, including the
/// current historyModelObj
class HistoryController extends GetxController {
  Rx<HistoryModel> historyModelObj = HistoryModel().obs;
}
