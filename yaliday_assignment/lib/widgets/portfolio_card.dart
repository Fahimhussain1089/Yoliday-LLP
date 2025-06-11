import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/portfolio_item.dart';
import '../utils/constants.dart';

class PortfolioCard extends StatelessWidget {
  final PortfolioItem item;

  const PortfolioCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image
          // Container(
          //   width: 80.w,
          //   height: 80.h,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.horizontal(right: )
          //     //circular(8.r),
          //     image: DecorationImage(
          //       image: AssetImage(item.imagePath),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(4.r)),
              image: DecorationImage(
                image: AssetImage(item.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.cardTitle.copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 4.h),
                Text(
                  item.subtitle,
                  style: AppTextStyles.cardSubtitle.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          // Grade
          Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              color: AppColors.secondary2,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                item.grade,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}