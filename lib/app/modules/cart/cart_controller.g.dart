// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartBase, Store {
  final _$produtcsAtom = Atom(name: '_CartBase.produtcs');

  @override
  List<ProductModel> get produtcs {
    _$produtcsAtom.context.enforceReadPolicy(_$produtcsAtom);
    _$produtcsAtom.reportObserved();
    return super.produtcs;
  }

  @override
  set produtcs(List<ProductModel> value) {
    _$produtcsAtom.context.conditionallyRunInAction(() {
      super.produtcs = value;
      _$produtcsAtom.reportChanged();
    }, _$produtcsAtom, name: '${_$produtcsAtom.name}_set');
  }

  final _$_CartBaseActionController = ActionController(name: '_CartBase');

  @override
  void add(ProductModel product) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.add(product);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(ProductModel product) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.remove(product);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alter(ProductModel product) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.alter(product);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addQtd(ProductModel product) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.addQtd(product);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeQtd(ProductModel product) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.removeQtd(product);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }
}
