import 'package:flutter/material.dart';
import 'package:my_task/core/utils/app_colors.dart';
import 'package:my_task/core/utils/app_strings.dart';
import 'package:my_task/presentation/screens/create_task.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_font.dart';
import '../../core/utils/app_values.dart';
import '../../core/utils/components.dart';
import '../../core/utils/date_util.dart';
import '../widgets/date_calendar.dart';
import '../widgets/my_tasks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryColor,
              child: Container(
                height: AppSize.s325,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: AppColors.primaryColor,
                            child: Container(
                              height: AppSize.s100,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(AppSize.s42),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: AppPadding.p22, top: AppPadding.p40),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.menu),
                                      color: Colors.black,
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      height: AppSize.s40,
                                      child: Image.asset(
                                        ImageAssets.iconNotification,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Container(
                            height: AppSize.s100,
                            width: AppSize.s120,
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(AppSize.s42),
                              ),
                            ),
                            child: const Center(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(ImageAssets.moSalah),
                                radius: AppSize.s25,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: AppColors.primaryColor,
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(AppSize.s40),
                                bottomLeft: Radius.circular(AppSize.s45),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p40,
                                    vertical: AppPadding.p20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      AppStrings.appName,
                                      style: TextStyle(
                                          fontSize: FontSizeManager.s30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height: AppSize.s50,
                                      width: AppSize.s50,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(AppSize.s10),
                                      ),
                                      child: IconButton(
                                        onPressed: () => navigatorTo(
                                            context: context,
                                            screen: const CreateTask()),
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: AppSize.s30,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p40),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      AppStrings.today,
                                      style: TextStyle(
                                          fontSize: FontSizeManager.s25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      formattedDate,
                                      style: TextStyle(
                                          color:
                                              Colors.lightBlue.withOpacity(.5)),
                                    ),
                                  ],
                                ),
                              ),
                              const DateCalendar()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const MyTasks(),
          ],
        ),
      ),
    );
  }
}
