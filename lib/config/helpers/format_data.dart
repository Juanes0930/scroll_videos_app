
import 'package:intl/intl.dart';

class FormatData {
  static String readbleNumber(double number) {

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }
}