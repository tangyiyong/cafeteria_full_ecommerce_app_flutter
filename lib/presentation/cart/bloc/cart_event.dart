part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

abstract class CartActionEvent extends CartEvent {}

class CartBackClickActionEvent extends CartActionEvent {}

class CartPlusButtonActionEvent extends CartEvent {
  final Cart cart;

  CartPlusButtonActionEvent({required this.cart});
}

class CartMinusButtonActionEvent extends CartEvent {
  final Cart cart;

  CartMinusButtonActionEvent({required this.cart});
}

class CartRemoveItemButtonActionEvent extends CartEvent {
  final Cart cart;

  CartRemoveItemButtonActionEvent({required this.cart});
}

class CartDeliveryTypeSelectionEvent extends CartEvent {
  final int typeSelect;

  CartDeliveryTypeSelectionEvent({required this.typeSelect});
}
