import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_success_dialog.dart';
import 'package:ec_card_app/src/presentation/home/scanner/widgets/scan_error_dialog.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  // ✅ Duplicate prevention taaki loop me scan na ho
  final MobileScannerController _scannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  bool _isProcessing = false;

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  void _onQrDetected(BarcodeCapture capture) async {
    if (_isProcessing) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isEmpty) return;

    final String? code = barcodes.first.rawValue;
    if (code == null || code.isEmpty) return;

    setState(() => _isProcessing = true);

    // 🔍 Verification logic (Example: eccard prefix ya pharmacy code)
    if (code.startsWith("eccard") || code.contains("pharmacy")) {
      // 🟢 Valid QR Code
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => ScanSuccessDialog(qrCode: code),
      );
    } else {
      // 🔴 Invalid QR Code
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const ScanErrorDialog(
          message: "Invalid QR Code or Pharmacy is not authorized.",
        ),
      );
    }

    if (mounted) {
      setState(() => _isProcessing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan Pharmacy QR"),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on),
            onPressed: () => _scannerController.toggleTorch(),
          ),
          IconButton(
            icon: const Icon(Icons.flip_camera_ios),
            onPressed: () => _scannerController.switchCamera(),
          ),
        ],
      ),
      body: Stack(
        children: [
          // 📷 Live Camera Feed
          MobileScanner(
            controller: _scannerController,
            onDetect: _onQrDetected,
          ),

          // 🔲 Scanner Overlay Frame
          Center(
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyanAccent, width: 3),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),

          // ℹ️ Helper Text
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Align the pharmacy QR code inside the frame",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}