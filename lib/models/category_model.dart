import 'package:flutter/material.dart';
import 'package:shoping/utils/app_colors.dart';

class CategoryModel {
  final String id;
  final String name;
  final int productsCount;
  final Color bgcolor;
  final Color textcolor;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.productsCount,
      this.bgcolor = AppColors.primary,
      this.textcolor = AppColors.white});
}

List<CategoryModel> dummyCategory = [
  CategoryModel(
      id: '1',
      name: 'New Arrivals',
      productsCount: 208,
      bgcolor: AppColors.primary,
      textcolor: AppColors.black),
  CategoryModel(
      id: '2',
      name: 'Clothes',
      productsCount: 358,
      bgcolor: AppColors.green,
      textcolor: AppColors.white),
  CategoryModel(
      id: '3',
      name: 'Bags',
      productsCount: 160,
      bgcolor: AppColors.black,
      textcolor: AppColors.white),
  CategoryModel(
      id: '4',
      name: 'Shoes',
      productsCount: 230,
      bgcolor: AppColors.blue,
      textcolor: AppColors.white),
  CategoryModel(
      id: '1',
      name: 'Electronics',
      productsCount: 101,
      bgcolor: AppColors.grey,
      textcolor: AppColors.black)
];
