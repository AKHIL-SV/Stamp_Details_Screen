import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stamp_details/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'スタンプカード詳細',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leadingWidth: 56.w,
        leading: Container(
          margin: EdgeInsets.only(left: 16.w),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: backButtonColor,
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
          ),
        ),
        actions: [
          Icon(
            Icons.stop_circle_outlined,
            size: 24.sp,
          ),
          SizedBox(
            width: 19.w,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mer キッチン',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '現在の獲得数 ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                    Text(
                      '30 ',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: white,
                      ),
                    ),
                    Text(
                      '個',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(22.sp),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 247.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.sp,
                      horizontal: 16.sp,
                    ),
                    child: Text(
                      'スタンプ獲得履歴',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          const Divider(thickness: 1),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 62.sp,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dates[index],
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: gray,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'スタンプを獲得しました。',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: darkGray,
                                    ),
                                  ),
                                  Text(
                                    '1 個',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: darkGray,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
