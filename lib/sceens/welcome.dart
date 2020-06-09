import 'package:flutter/material.dart';
import 'package:zehodor/components/atoms/title-text.dart';
import 'package:zehodor/components/molecules/qr-code-scanner.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zé Delivery - Hold The Door',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Welcome(title: 'Zé Delivery - Hold The Door'),
    );
  }
}

class Welcome extends StatefulWidget {
  Welcome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String _qrCodeUrl = '';

  void _setQrCodeUrl(String url) {
    setState(() {
      _qrCodeUrl = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TitleText(text: 'The qr code url is:'),
            Text('$_qrCodeUrl'),
            QrCodeScanner(onScanFinished: _setQrCodeUrl)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
