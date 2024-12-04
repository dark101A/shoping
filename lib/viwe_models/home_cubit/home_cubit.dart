import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping/models/product_item_model.dart';
import 'package:shoping/models/home_carosel_item_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void getHomeData() {
    emit(HomeLoading());
    Future.delayed(const Duration(seconds: 1), () {
      emit(HomeLoaded(
          CarouselItems: dummyHomeCarouselItem, Products: dummyProducts));
    });
  }
}
