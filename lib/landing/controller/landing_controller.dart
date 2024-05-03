import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../auth/login_page.dart';
import '../../master/pages/master_page.dart';
class LandingController extends GetxController {



  checkLogin()
  async {
   await Future.delayed(const Duration(seconds: 2));
    var user = FirebaseAuth.instance.currentUser;

    if(user == null)
      {
        Get.to(LoginPage());
      }
    else
      {
        Get.to(const MasterPage());
      }


  }


}
