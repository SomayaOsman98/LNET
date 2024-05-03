import 'package:admin_lnet/customers/controller/user_controller.dart';
import 'package:admin_lnet/data/user/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/user/model/users_model.dart';

class EditCustomer extends StatelessWidget {
  const EditCustomer({super.key, this.User});


  final Singleuser? User;
  @override
  Widget build(BuildContext context) {
    CollectionReference users =FirebaseFirestore.instance.collection('users');
    TextEditingController fullname = TextEditingController();
    TextEditingController number = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController address = TextEditingController();
    UserController userController = Get.put(UserController());
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FutureBuilder<QuerySnapshot>(
                future: users.get(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text("حدث خطأ ما");
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    var map = snapshot.data!.docs.where((doc) => doc.id == User).map((doc) {
                      var m = doc.data() as Map<String, dynamic>;
                      m["id"] = doc.id;
                      return m;
                    }).toList();
                    var result = Users.fromJson({"users": map} as List<Map<String, dynamic>>);
                    return Expanded(
                      child: ListView.builder(
                        itemCount: result.users?.length ?? 0,
                        itemBuilder: (context, index) {
                          var user = result.users![index];
                          return Column(
                            children: [
                              TextField(
                                controller: fullname,
                                decoration: InputDecoration(
                                  hintText: user.fullname,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextField(
                                controller: phone,
                                decoration: InputDecoration(
                                  hintText: user.phone,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextField(
                                controller: number,
                                decoration: InputDecoration(
                                  hintText: user.number,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextField(
                                controller: address,
                                decoration: InputDecoration(
                                  hintText: user.address,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextField(
                                controller: city,
                                decoration: InputDecoration(
                                  hintText: user.city,
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (user != null) {
                                      user.fullname = fullname.text;
                                      user.number = number.text;
                                      user.phone = phone.text;
                                      user.city = city.text;
                                      user.address = address.text;
                                    }
                                    userController.editUser(singleUser: user);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // لون الخلفية الأخضر
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // لون النص
                                    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent), // لون النص عند الضغط
                                  ),
                                  child: Text(
                                    'حفظ',
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500), // لون النص في الزر
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    );
                  }
                  return Text("جاري التحميل");              },
              )
            ],
          ),
        ),
      ),
    );
  }
}
