import 'package:egg_manager/api/analysis/analysis.dart';

class AnalyticService extends IAnalysisService{
  @override
  Future<void> sendAnalyticsEvent(String eventName, EventAction action, {String pageName, Map<String, Object> params}) async {
    await sendEvent(eventName, params: params);
  }

  @override
  Future<void> sendClickEvent(String eventName, {String pageName, Map<String, Object> params}) async {
    await sendEvent(eventName, params: params);
  }

}