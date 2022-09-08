import 'package:flutter/material.dart';
import 'package:my_task/core/utils/app_values.dart';

import '../../core/utils/app_colors.dart';

class MyTasks extends StatefulWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  final List<Widget> iconList = [
    const Icon(
      Icons.person,
      size: AppSize.s50,
      color: Colors.white,
    ),
    const Icon(
      Icons.phone,
      size: AppSize.s50,
      color: Colors.white,
    ),
    const Icon(
      Icons.mail,
      size: AppSize.s50,
      color: Colors.white,
    ),
    const Icon(
      Icons.adb,
      size: AppSize.s50,
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: AppMargin.m20),
        child: Container(
            decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppSize.s45),
                )),
            child: Container(
              margin: const EdgeInsets.only(
                  left: AppMargin.m30, top: AppMargin.m20),
              child: RawScrollbar(
                thumbVisibility: true,
                thumbColor: Colors.black,
                thickness: 3,
                trackColor: Colors.white,
                trackVisibility: true,
                minThumbLength: 4,
                mainAxisMargin: 15,
                scrollbarOrientation: ScrollbarOrientation.left,
                child: Container(
                  height: AppSize.s200,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    left: AppMargin.m30,
                    top: AppMargin.m10,
                    right: AppMargin.m30,
                  ),
                  child: ListView.separated(
                      itemBuilder: ((context, index) => Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 130,
                                padding:
                                    const EdgeInsets.only(left: 35, right: 20),
                                margin: const EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.primaryColor
                                                  .withOpacity(.3)),
                                          child: iconList[index],
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Team Meeting',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            SizedBox(
                                              height: 50,
                                              child: Text(
                                                'Discuss all questions\n  about new projects',
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: AppColors
                                                        .primaryColor
                                                        .withOpacity(.4),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 110,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    )),
                                child: const Center(
                                  child: Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          )),
                      separatorBuilder: ((context, index) => const SizedBox(
                            height: 15,
                          )),
                      itemCount: 4),
                ),
              ),
            )),
      ),
    );
  }
}
