import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloboss/global_controller.dart';
import 'package:launch/launch.dart';
import 'package:service_manager/core/service_manager.dart';
import 'package:service_manager/service_manager.dart';

void init(){
  RootController controller = Get.put(RootController());
  runApp(
      GetMaterialApp(
        navigatorKey: Get.key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        theme: ThemeData(primaryColor: Colors.white),
        home: byService<ILaunch>().createLaunchName(),
        getPages: controller.pages,
      )
  );
}