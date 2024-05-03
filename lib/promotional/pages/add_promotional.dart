import 'package:admin_lnet/data/promotional/model/promotional_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/promotional_controller.dart';

class AddPromotional extends StatelessWidget {
  AddPromotional({super.key});
  final TextEditingController address = TextEditingController();
  final TextEditingController details = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    PromotionalController promController = Get.put(PromotionalController());
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  controller: address,
                  decoration: InputDecoration(
                    labelText: 'عنوان العرض',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  controller: details,
                  decoration: InputDecoration(
                    labelText: 'تفاصيل العرض',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffb50218)), // لون الخط الأحمر
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: ElevatedButton(
                  onPressed: () {
                    promController.addProm(
                        singlepromotional: Singlepromotional(
                            address:address.text,
                            details:details.text,
                        ));
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
      ),
    );
  }
}
