import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:mobx_example/app/modules/cart/widgets/cart_tile/cart_tile_widget.dart';

main() {
  testWidgets('CartTileWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CartTileWidget()));
    final textFinder = find.text('CartTile');
    expect(textFinder, findsOneWidget);
  });
}
