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
              padding: EdgeInsets.symmetric(
                vertical: 23.sp,
                horizontal: 19.sp,
              ),
              child: Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 20.sp,
                    mainAxisSpacing: 10.sp,
                  ),
                  itemCount: 15,
                  itemBuilder: (context, index) {
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
                          child: Image.asset('assets/icons/octagon.png'),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.done,
                            color: white,
                            size: 15.sp,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
