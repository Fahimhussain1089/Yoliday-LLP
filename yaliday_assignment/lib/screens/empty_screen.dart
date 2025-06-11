import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';

class EmptyScreen extends StatelessWidget {
  final String title;

  const EmptyScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text(
          '$title Screen',
          style: AppTextStyles.heading.copyWith(fontSize: 24.sp),
        ),
      ),
    );
  }
}