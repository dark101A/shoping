part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  HomeLoaded({
    required this.CarouselItems,
    required this.Products,
  });
  final List<HomeCaroselItemModel> CarouselItems;
  final List<ProductItemModel> Products;
}

final class HomeError extends HomeState {
  HomeError({
    required this.message,
  });
  final String message;
}
