import 'package:flutter/material.dart';
import 'package:zehodor/services/router/routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: '/',
      title: 'Zé Delivery - Hold The Door',
    );
  }
}
