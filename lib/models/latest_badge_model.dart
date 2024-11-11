import 'package:flutter/material.dart';
import 'package:ijd_creative_task/core/constants/app_assets.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';

class LatestBadgeModel {
  final String image;
  final String name;
  final Color color;

  LatestBadgeModel({
    required this.image,
    required this.name,
    required this.color,
  });
}

List<LatestBadgeModel> latestBadges = [
  LatestBadgeModel(
    image: AppImages.tree,
    name: 'GENIUS',
    color: AppColors.colorDB,
  ),
  LatestBadgeModel(
    image: AppImages.golf,
    name: 'ON TIME',
    color: AppColors.color9E,
  ),
  LatestBadgeModel(
    image: AppImages.tree,
    name: 'MATHY',
    color: AppColors.color00,
  ),
  LatestBadgeModel(
    image: AppImages.golf,
    name: 'HAPPY',
    color: AppColors.colorDC,
  ),
];
