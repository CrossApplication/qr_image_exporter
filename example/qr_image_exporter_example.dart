import 'dart:io';
import 'dart:typed_data';
import 'package:qr_image_exporter/qr_image_exporter.dart';

void main() {
  // Create QR code data
  final QrCode qrCode = QrCode.fromData(
    data: 'Hello, World!',
    errorCorrectLevel: QrErrorCorrectLevel.M,
  );
  final QrImage qrImage = QrImage(qrCode);

  // Export PNG data
  final Uint8List? pngBytes = qrImage.toPngBytes(
    moduleSize: 8,
    margin: 40,
    darkColor: 0xFF0066AA, // Blue
  );

  if (pngBytes != null) {
    // Save as file (example)
    File('my_qr_code.png').writeAsBytesSync(pngBytes);
    // ignore: avoid_print
    print('QR code saved as my_qr_code.png.');
  }
}
