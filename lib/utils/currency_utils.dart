String formatNumberInMillion(int number) {
  if (number >= 1000000) {
    final double result = number / 1000000.0;
    return '${result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 1)}mil';
  } else if (number >= 1000) {
    final double result = number / 1000.0;
    return '${result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 1)}k';
  } else {
    return number.toString();
  }
}