import 'package:get/get.dart';
import 'package:launch/service/launch_service.dart';
import 'package:service_manager/api/launch/launch.dart';
import 'package:service_manager/core/service_manager.dart';

class RootController extends GetxController{
  List<GetPage> pages;
  @override
  void onInit() {
    super.onInit();
    _registerModule();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  //注册模块
  void _registerModule(){
    ServiceManager().addService<ILaunch>(ILaunchImpl());
  }
}