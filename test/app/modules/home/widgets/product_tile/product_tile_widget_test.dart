import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_example/app/modules/home/widgets/product_tile/product_tile_widget.dart';

main() {
  testWidgets('ProductTileWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductTileWidget()));
    final textFinder = find.text('ProductTile');
    expect(textFinder, findsOneWidget);
  });
}
