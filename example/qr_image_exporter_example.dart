import 'dart:io';
import 'package:qr/qr.dart';
import 'package:qr_image_exporter/qr_image_exporter.dart';

void main() {
  // Create QR code data
  final qrCode = QrCode.fromData(
    data: 'Hello, World!',
    errorCorrectLevel: QrErrorCorrectLevel.M,
  );
  final qrImage = QrImage(qrCode);

  // Export PNG data
  final pngBytes = qrImage.toPngBytes(
    moduleSize: 8,
    margin: 40,
    darkColor: 0xFF0066AA, // Blue
  );

  if (pngBytes != null) {
    // Save as file (example)
    File('my_qr_code.png').writeAsBytesSync(pngBytes);
    print('QR code saved as my_qr_code.png.');
  }
}
