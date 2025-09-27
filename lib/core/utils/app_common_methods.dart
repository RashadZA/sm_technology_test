part of 'design_utils.dart';

double calculateDiscountedPrice({
  double? unitPrice,
  double? discount,
  String? discountType,
}) {
  final double price = unitPrice ?? 0.0;
  final double discountValue = discount ?? 0.0;

  switch (discountType) {
    case percentageDiscountType:
      return price - (price * (discountValue / 100));
    case fixedDiscountType:
      return price - discountValue;
    default:
      return 0.0; // No discount or unknown type
  }
}

Color hexToColor(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}