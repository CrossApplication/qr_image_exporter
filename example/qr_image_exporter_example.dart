import 'dart:io';
import 'dart:typed_data';
import 'package:qr_image_exporter/qr_image_exporter.dart';

void main() {
  // 1. Generate the core QrImage data
  final QrCode qrCode = QrCode(
    payload: QrPayload.fromString('https://pub.dev/packages/qr_image_exporter'),
    errorCorrectLevel: QrErrorCorrectLevel.medium,
  );
  final QrImage qrImage = QrImage(qrCode);

  // 2. Use the 'toPngBytes' extension method to export
  final Uint8List? pngBytes = qrImage.toPngBytes(
    // Optional: Customize the image output
    moduleSize: 8, // Larger dots (higher resolution)
    margin: 30, // Larger border
    darkColor: 0xFF0057B8, // Example: Blue
    lightColor: 0xFFF0DA49, // Example: Yellow
  );

  if (pngBytes != null) {
    // Example: Save the byte data to a file
    File('custom_qr_code.png').writeAsBytesSync(pngBytes);
    // ignore: avoid_print
    print('QR code successfully exported!');
  }
}
