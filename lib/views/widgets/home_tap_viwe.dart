import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:shoping/utils/app_Routes.dart';
import 'package:shoping/views/widgets/product_item.dart';
import 'package:shoping/viwe_models/home_cubit/home_cubit.dart';

class HomeTapViwe extends StatelessWidget {
  const HomeTapViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is HomeLoaded) {
          return Column(
            children: [
              FlutterCarousel.builder(
                itemCount: state.CarouselItems.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        state.CarouselItems[itemIndex].imgUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                options: FlutterCarouselOptions(
                  height: 200,
                  showIndicator: true,
                  autoPlay: true,
                  slideIndicator: CircularWaveSlideIndicator(),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'New Arrivals',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: state.Products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => Navigator.of(context).pushNamed(
                            AppRoutes.productDetailsRoute,
                            arguments: state.Products[index].id),
                        child: ProductItem(productItem: state.Products[index]));
                  },
                ),
              ),
            ],
          );
        } else if (state is HomeError) {
          return Center(
            child: Text(
              state.message,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
