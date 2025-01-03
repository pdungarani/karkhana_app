import 'package:get/get.dart';

import 'history_page.dart';

class HistoryController extends GetxController {
  HistoryController(this.historyPresenter);

  final HistoryPresenter historyPresenter;

  DateTime selectedDate = DateTime.now();

  int? month;
  int? year;
}
