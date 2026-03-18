import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('TicTacToeApp displays main game placeholder UI',
      (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // App bar title from MainGameScreen.
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Placeholder body text from MainGameScreen.
    expect(find.text('Tic Tac Toe Game Board Here'), findsOneWidget);
  });
}
