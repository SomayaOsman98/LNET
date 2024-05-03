import 'package:admin_lnet/data/promotional/model/promotional_model.dart';

class Promotionals {
  List<Singlepromotional>? promotionals;


  Promotionals({this.promotionals});

  Promotionals.fromJson(List<Map<String, dynamic>> list) {
    promotionals = <Singlepromotional>[];
    for (var element in list) {
      promotionals!.add(Singlepromotional.fromJson(element));
    }
  }


}