import 'package:flutter/material.dart';

class ScanSuccessDialog extends StatelessWidget {
  const ScanSuccessDialog({Key? key, required this.qrCode}) : super(key: key);

  final String qrCode;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Column(
        children: const [
          Icon(Icons.check_circle, color: Colors.green, size: 60),
          SizedBox(height: 10),
          Text(
            "Voucher Claimed!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
      content: Text(
        "Pharmacy QR verified successfully.\n\nCode: $qrCode",
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: () {
            Navigator.pop(context); // Close dialog
            Navigator.pop(context); // Return to HomePage
          },
          child: const Text("Done", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}