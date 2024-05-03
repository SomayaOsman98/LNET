import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/promotional_model.dart';

class PromRepository {
  const PromRepository();
  addProm({required Singlepromotional singleProm}) {
    FirebaseFirestore.instance.collection('Promotional')
        .add(singleProm.toJson()).then((value) => print("Promotional Added"));
  }


}