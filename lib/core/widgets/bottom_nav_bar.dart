import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';

CrystalNavigationBar bottomNavigationBar() {
  return CrystalNavigationBar(
    unselectedItemColor: AppColors.grey,
    backgroundColor: Colors.white,
    onTap: (index) {},
    items: [
      CrystalNavigationBarItem(
        icon: IconlyBold.home,
        unselectedIcon: IconlyLight.home,
        selectedColor: AppColors.green,
      ),
      CrystalNavigationBarItem(
        icon: IconlyBold.heart,
        unselectedIcon: IconlyLight.heart,
        selectedColor: AppColors.green,
      ),
      CrystalNavigationBarItem(
        icon: IconlyBold.plus,
        unselectedIcon: IconlyLight.plus,
        selectedColor: AppColors.green,
      ),
      CrystalNavigationBarItem(
        icon: IconlyBold.search,
        unselectedIcon: IconlyLight.search,
        selectedColor: AppColors.green,
      ),
    ],
  );
}
