import 'package:intl/intl.dart';

extension DateTimeFormat on String {
  ///Convert 2024-05-23 06:00:00 to Thu, 6 AM
  String toEHA() {
    DateTime dateTime = DateTime.parse(this);
    String formattedDate = DateFormat('E').format(dateTime);
    String formattedTime = DateFormat('h a').format(dateTime);
    return '$formattedDate, $formattedTime';
  }

  ///Convert 2024-05-23 06:00:00 to Thu, 23
  String toED() {
    DateTime dateTime = DateTime.parse(this);
    String formattedDate = DateFormat('E').format(dateTime);
    String formattedTime = DateFormat('d').format(dateTime);
    return '$formattedDate, $formattedTime';
  }
}
