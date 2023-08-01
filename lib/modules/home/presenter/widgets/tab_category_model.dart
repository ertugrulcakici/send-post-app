import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../../infra/datasources/user_controller.dart';

class TabCategory extends GetWidget<UserController> {
  const TabCategory({
    super.key,
    required this.index,
    required this.text,
    required this.tabController,
  });

  final int index;
  final String text;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    print('---------------------');
    print('tabController.index');
    print(controller.selectedTabIndex);
    print('index');
    print(index);
    print('---------------------');
    return GetBuilder<UserController>(
        id: 'userController',
        builder: (c) {
          return Container(
            height: context.heightOfScreen(5),
            decoration: BoxDecoration(
              color: controller.selectedTabIndex == index
                  ? context.primaryColorLight.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  context.radiusLarge,
                ),
              ),
            ),
            child: Center(
                child: Text(
              text,
              style: controller.selectedTabIndex == index
                  ? context.selectedTabText
                  : context.unSelectedTabText,
            )),
          );
        });
  }
}
