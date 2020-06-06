import 'package:zehodor/sceens/welcome.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('WelcomeScreen contains the qr code title', (WidgetTester tester) async {
    String qrCodeTitle = 'The qr code url is:';

    await tester.pumpWidget(WelcomeScreen());

    final titleFinder = find.text(qrCodeTitle);

    expect(titleFinder, findsOneWidget);
  });
}