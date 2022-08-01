import 'package:act_4_community_by_ocp/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }

}