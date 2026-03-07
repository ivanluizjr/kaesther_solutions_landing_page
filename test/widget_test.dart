import 'package:flutter_test/flutter_test.dart';
import 'package:kaesther_solutions_landing_page/app.dart';

void main() {
  testWidgets('Landing page renders', (WidgetTester tester) async {
    await tester.pumpWidget(const KaestherApp());
    expect(find.text('Soluções Digitais'), findsOneWidget);
  });
}
