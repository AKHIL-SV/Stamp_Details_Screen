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
          height: 199.sp,
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 8.sp),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(24.sp),
            child: Container(
              height: 199.sp,
              width: 317.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.sp),
                color: white,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 23.sp,
                horizontal: 19.sp,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon(),
                      starIcon()
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget starIcon() {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [
                Color(0xffFAA677),
                Color.fromARGB(255, 255, 198, 164),
              ],
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: Image.asset(
            'assets/icons/octagon.png',
            width: 40.w,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Icon(
            Icons.done,
            color: white,
            size: 18.sp,
          ),
        )
      ],
    );
  }
}
