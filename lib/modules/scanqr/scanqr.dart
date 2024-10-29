import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQr extends StatelessWidget {
  const ScanQr({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileScanner(onDetect: (capture) {
      final List<Barcode> barcodes = capture.barcodes;
    for (final barcode in barcodes) {
      print(barcode.displayValue);
    }
    },);
  }
}