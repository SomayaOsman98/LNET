import 'package:admin_lnet/customers/controller/state.dart';
import 'package:admin_lnet/data/promotional/model/promotional_model.dart';
import 'package:get/get.dart';
import '../../data/promotional/repository/promotional_repository.dart';


  class PromotionalController extends GetxController {

    PromRepository Promrepository = const PromRepository();
  Rx<HomeState> state =  HomeState(type: StateType.loading).obs;

  addProm({required Singlepromotional singlepromotional})
  {
    Promrepository.addProm( singleProm: singlepromotional);


  }




}