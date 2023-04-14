import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stamp_details/constant.dart';
import 'package:stamp_details/view/widgets/scroll_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56.sp,
        title: Text(
          'スタンプカード詳細',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leadingWidth: 56.sp,
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
          Image.asset(
            'assets/icons/minus.png',
            width: 24.w,
            fit: BoxFit.contain,
            color: white,
          ),
          SizedBox(
            width: 19.w,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
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
                  top: Radius.circular(22.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 247.sp,
                    child: Stack(
                      children: [
                        const Expanded(
                          child: ScrollCard(),
                        ),
                        Positioned(
                          bottom: 0.h,
                          right: 35.w,
                          child: Text(
                            '2 / 2枚目',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: darkGray,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 16.w,
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
