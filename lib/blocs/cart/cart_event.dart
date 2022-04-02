part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CartStarted extends CartEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CartProductAdded extends CartEvent {
  final Product product;

  CartProductAdded(this.product);

  @override
  // TODO: implement props
  List<Object?> get props => [product];
}

class CartProductRemoved extends CartEvent {
  final Product product;

  CartProductRemoved(this.product);

  @override
  // TODO: implement props
  List<Object?> get props => [product];
}
