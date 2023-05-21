class TimezoneUtils {
  DateTime convertToCurrentTimeZone({required String dateTimeString}) {
    DateTime utcDateTime = DateTime.parse(dateTimeString);
    // Get the current time zone
    final currentTimeZone = DateTime.now().timeZoneOffset;

    // Convert the UTC DateTime to the current time zone DateTime
    DateTime currentDateTime = utcDateTime.toLocal().add(currentTimeZone);

    return currentDateTime;
  }
}
