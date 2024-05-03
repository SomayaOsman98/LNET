import 'package:admin_lnet/customers/controller/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/user/model/user_model.dart';

class AddCustomer extends StatelessWidget {
   AddCustomer({super.key});
  final TextEditingController fullName = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController city = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController());
    return  Scaffold(

        body:Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: fullName,
                  decoration: InputDecoration(
                    labelText: 'اسم المستخدم الثلاثي',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: phone,
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: number,
                  decoration: const InputDecoration(
                    labelText: 'رقم العقد',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: address,
                  decoration: const InputDecoration(
                    labelText: 'عنوان السكن',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: city,
                  decoration: InputDecoration(
                    labelText: 'المدينة',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      userController.addUser(
                          singleUser: Singleuser(
                          fullname:fullName.text,
                          address:address.text,
                          city:city.text,
                          phone:phone.text,
                          number:number.text,
                          )
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffb50218)), // لون الخلفية
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // لون النص
                    ),
                    child: Text('إضافة'),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
