import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class QrCodeScanner extends StatelessWidget {
  final Function(String) onScanFinished;

  QrCodeScanner({@required this.onScanFinished});

  Future _scanQR() async{
    final result = await BarcodeScanner.scan();
    onScanFinished(result.rawContent);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: _scanQR,
      backgroundColor: Colors.black,
      label: Text('Clique para mágica acontecer'),
      icon: Icon(Icons.camera_alt, color: Colors.yellow,),
    );
  }
}