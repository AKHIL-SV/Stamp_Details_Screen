import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stamp_details/constant.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 30.sp),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          width: 317.w,
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 8.sp),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(24.sp),
            child: Container(
              height: 199.h,
              width: 317.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.sp),
                color: white,
              ),
            ),
          ),
        );
      },
    );
  }
}
