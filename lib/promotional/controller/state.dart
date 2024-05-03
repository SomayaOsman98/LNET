import '../../data/promotional/model/promotional_model.dart';
import '../../data/promotional/model/promotionals_model.dart';

class HomeState
{

  StateType type;
  Promotionals? promotionals;
  Singlepromotional? singlepromotional;
  String? error;


  HomeState({required this.type,this.promotionals,this.singlepromotional,this.error});


}















enum StateType{
  loading,
  loaded,
  error
}