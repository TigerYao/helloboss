import 'package:egg_manager/api/analysis/analysis.dart';
import 'package:flutter/material.dart';
import 'package:helloboss/global_controller.dart';
import 'package:egg_manager/service_manager.dart';

void init(){
  Get.put(RootController());
  runApp(
      GetMaterialApp(
        navigatorKey: Get.key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.pages,
        navigatorObservers: [
          byService<IAnalysisService>().firebaseAnalyticsObserver()
        ],
      )
  );
}