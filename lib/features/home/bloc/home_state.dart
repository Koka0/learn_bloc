// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

// Create a List of productModel
class HomeLoadedSuccessState extends HomeState {
  final List<ProductDataModel> products;
  HomeLoadedSuccessState({
    required this.products,
  });
}

class HomeErrorState extends HomeState {}

class HomeNavigateToCartActionPageState extends HomeActionState {}

class HomeNavigateToWishlistActionPageState extends HomeActionState {}

class HomeProductItemWishlistsActionPageState extends HomeActionState {}

class HomeProductItemCartedActionPageState extends HomeActionState {}
