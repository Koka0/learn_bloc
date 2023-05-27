// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

//TODO:First we Create a class of productEvent and buttomEvent
//
class HomeProductWishlistButtonClickEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductWishlistButtonClickEvent({
    required this.clickedProduct,
  });
}

class HomeProductCartButtonClickEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductCartButtonClickEvent({
    required this.clickedProduct,
  });
}

class HomeWishlistButtonNavigateEvent extends HomeEvent {}

class HomeCartButtonNavigateEvent extends HomeEvent {}
