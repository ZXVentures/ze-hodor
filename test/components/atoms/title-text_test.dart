import 'package:flutter_test/flutter_test.dart';
import 'package:zehodor/components/atoms/title-text.dart';

void main() {
  testWidgets('TitleText contains its title parameter', (WidgetTester tester) async {
    String titleText = 'Chorão vive até no Flutter :)';

    await tester.pumpWidget(TitleText(text: titleText));

    final titleFinder = find.text(titleText);

    expect(titleFinder, findsOneWidget);

  });
}