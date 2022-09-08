import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_task/core/utils/app_values.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_font.dart';
import '../../core/utils/date_util.dart';

class DateCalendar extends StatelessWidget {
  const DateCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSize.s50,
        margin: const EdgeInsets.only(
            left: AppMargin.m40, top: AppMargin.m20, right: AppMargin.m5),
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          initialScrollIndex: int.parse(DateFormat('dd').format(now)) - 1,
          itemBuilder: ((context, index) => Container(
                width: AppSize.s50,
                margin: const EdgeInsets.symmetric(horizontal: AppMargin.m8),
                decoration: BoxDecoration(
                    color: colorCalendar(
                        index, AppColors.primaryColor, Colors.white),
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    border: Border.all(
                      color: colorCalendar(
                        index,
                        AppColors.primaryColor,
                        AppColors.primaryColor,
                      ),
                    )),
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p5),
                  child: Column(
                    children: [
                      Text(
                        dayNumberOfMonth(index),
                        style: TextStyle(
                            color: colorCalendar(
                                index, Colors.white, Colors.black),
                            fontWeight: FontWeight.bold,
                            fontSize: FontSizeManager.s20),
                      ),
                      Text(
                        dayNameOfMonth(index)[0],
                        style: TextStyle(
                            color: colorCalendar(
                              index,
                              Colors.white,
                              AppColors.primaryColor.withOpacity(.6),
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: FontSizeManager.s13),
                      ),
                    ],
                  ),
                ),
              )),
          itemCount: sumDaysOfMonth,
        ));
  }
}

Color colorCalendar(int index, Color right, Color wrong) {
  return index + 1 == int.parse(DateFormat('d').format(DateTime.now()))
      ? right
      : wrong;
}
