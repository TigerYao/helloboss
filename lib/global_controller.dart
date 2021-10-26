import 'package:get/get.dart';
import 'package:launch/service/launch_service.dart';
import 'package:egg_manager/service_manager.dart';

class RootController extends GetxController{
  List<GetPage> pages;
  @override
  void onInit() {
    super.onInit();
    ServiceManager().init();
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