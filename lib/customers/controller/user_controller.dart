import 'package:admin_lnet/customers/controller/state.dart';
import 'package:get/get.dart';
import '../../data/user/model/user_model.dart';
import '../../data/user/repository/user_repository.dart';

  class UserController extends GetxController {

  UserRepository userRepository = const UserRepository();
  Rx<HomeState> state =  HomeState(type: StateType.loading).obs;

  addUser({required Singleuser singleUser})
  {
    userRepository.addUser(singleUser: singleUser);
  }
  editUser({required Singleuser singleUser})
  async {
    await userRepository.editUser(singleUser: singleUser);
    Get.back();


  }




}