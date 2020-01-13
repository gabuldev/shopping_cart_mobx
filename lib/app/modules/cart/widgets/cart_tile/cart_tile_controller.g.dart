// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_tile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartTileController on _CartTileBase, Store {
  final _$productAtom = Atom(name: '_CartTileBase.product');

  @override
  ProductModel get product {
    _$productAtom.context.enforceReadPolicy(_$productAtom);
    _$productAtom.reportObserved();
    return super.product;
  }

  @override
  set product(ProductModel value) {
    _$productAtom.context.conditionallyRunInAction(() {
      super.product = value;
      _$productAtom.reportChanged();
    }, _$productAtom, name: '${_$productAtom.name}_set');
  }

  final _$_CartTileBaseActionController =
      ActionController(name: '_CartTileBase');

  @override
  void increment() {
    final _$actionInfo = _$_CartTileBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_CartTileBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_CartTileBaseActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_CartTileBaseActionController.endAction(_$actionInfo);
    }
  }
}
