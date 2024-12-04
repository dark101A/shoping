import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping/utils/app_Routes.dart';
import 'package:shoping/views/pages/bottom_nav_bar.dart';
import 'package:shoping/views/pages/product_details_page.dart';
import 'package:shoping/viwe_models/product_details_cubit/product_details_cubit.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const BottomNavBar());
      case AppRoutes.productDetailsRoute:
        final String productid = settings.arguments as String;
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => BlocProvider(
                  create: (context) {
                    final Cubit = ProductDetailsCubit();
                    Cubit.getProductDetails(productid);
                    return Cubit;
                  },
                  child: ProductDetailsPage(
                    productId: productid,
                  ),
                ));
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
