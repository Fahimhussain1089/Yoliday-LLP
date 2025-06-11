import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constants.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, 'assets/icons/home.svg', 'Home'),
          _buildNavItem(1, 'assets/icons/portfolio.svg', 'Portfolio'),
          _buildNavItem(2, 'assets/icons/input.svg', 'Input'),
          _buildNavItem(3, 'assets/icons/profile.svg', 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String label) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Indicator
            Container(
              height: 3.h,
              width: 20.w,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            SizedBox(height: 8.h),
            // Icon (Replace with your SVG icons)
            Icon(
              _getIconData(index),
              color: isSelected ? AppColors.primary : AppColors.inactive,
              size: 24.sp,
            ),
            SizedBox(height: 4.h),
            // Label
            Text(
              label,
              style: AppTextStyles.tabText.copyWith(
                color: isSelected ? AppColors.primary : AppColors.inactive,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(int index) {
    switch (index) {
      case 0:
        return Icons.home_outlined;
      case 1:
        return Icons.work_outline;
      case 2:
        return Icons.input_outlined;
      case 3:
        return Icons.person_outline;
      default:
        return Icons.home_outlined;
    }
  }
}