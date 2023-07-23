import 'package:barcode/barcode.dart';

class PaymentFunctions {
  String createBarcode() {
    final bar = Barcode.qrCode();
    final svg = bar.toSvg("parthmajithiya386@oksbi", width: 300, height: 100);
    return svg;
  }
}
