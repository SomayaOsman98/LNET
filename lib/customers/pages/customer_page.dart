import 'package:admin_lnet/customers/pages/edit_customer.dart';
import 'package:admin_lnet/packages/package_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../data/user/model/users_model.dart';
import '../../promotional/pages/promotional_page.dart';
import '../../requests/request_page.dart';
import 'add_customer.dart';
class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users =FirebaseFirestore.instance.collection('users');
    return  Scaffold(
      appBar: AppBar(toolbarHeight: 80,
        backgroundColor: const Color(0xffe8e6e6).withOpacity(0.7),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.person_pin_rounded,
                    size: 40,
                    color: Color(0xffb50218),
                  ),
                  tooltip: 'الملف الشخصي',
                  onPressed: () {},
                ),
                const Text(
                  'إسم المستخدم',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffb50218),
                  ),
                ),
              ],
            ),
          ),
        ],
        title: Center(
          child: Text(
            "LNET",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
              color: Color(0xffb50218),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.exit_to_app_outlined,
                  size: 40,
                  color: Color(0xffb50218),
                ),
                tooltip: 'تسجيل خروج',
                onPressed: () {},
              ),
              const Text(
                ' خروج',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffb50218),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CustomerPage());
                        },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffb50218).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة المستخدمين', style: TextStyle(color: Color(0xffe0dddd), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(PromotionalPage());
                        },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة العروض الترويجية', style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(PackagePage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة الباقات' ,style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(RequestPage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80),
                        primary: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة الطلبات', style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18),),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 180),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only( right: 60.0),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 400,
                                    height: 450,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: AddCustomer(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "إضافة مستخدم جديد",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFB50218),
                                ),
                              ),
                            ),
                          ),
                        )
                    ),
                    SizedBox(width: 120),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 200.0),
                        child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'ابحث...',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            FutureBuilder<QuerySnapshot>(
              future: users.get(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("حدث خطأ ما");
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  var map = snapshot.data!.docs.map((doc) {
                    var m = doc.data() as Map<String, dynamic>;
                    m["id"] = doc.id;
                    return m;
                  }).toList();
                  var result = Users.fromJson(map);
                  // print(result.users?.length ?? 0);
                  return Expanded(
                    child: ListView.builder(
                      itemCount: result.users?.length ?? 0,
                      itemBuilder: (context, index) {
                        var user = result.users![index];


                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 140),
                          padding: EdgeInsets.all(10),
                          color: Colors.grey[100],
                          width: 400,
                          height: 100,
                          child: Row(
                            children: [
                              DataTable(
                              columns: const [
                                DataColumn(
                                  label: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                                    child: Text(
                                      "رقم العقد",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                                    child: Text(
                                      " إسم المستخدم الثلاثي",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                                    child: Text(
                                      "تاريخ إنتهاء الصلاحية",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: [
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Container(
                                        height: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                                          child: Text(user.number!),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                                          child: Text(user.fullname!),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        height: 60,
                                        child: Center(child: Text(user.expiration_date!)),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        content: Container(
                                                          width: 400,
                                                          height: 450,
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(10.0),
                                                            child: EditCustomer(
                                                              User: user,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                ),
                                                child: Container(
                                                  width: 50,
                                                  height: 80,
                                                  child: Center(
                                                    child: Text(
                                                      "تعديل",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                  padding: const EdgeInsets.only(right: 18.0),
                                                  child: ElevatedButton(
                                                    onPressed: ()  {
                                                      var docRef = FirebaseFirestore.instance.collection('users').doc('id');
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                            content: Container(
                                                              width: 200,
                                                              height: 120,
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(20.0),
                                                                child: Column(
                                                                  children: [
                                                                    Text('هل تريد حذف هذا المستخدم؟', style: TextStyle(color:Colors.red,
                                                                        fontWeight: FontWeight.w600),),
                                                                    SizedBox(height: 20),
                                                                    Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        ElevatedButton(
                                                                          onPressed: () {
                                                                            // حذف المستند
                                                                            docRef.delete()
                                                                                .then((value) {
                                                                              print('تم حذف المستند بنجاح');
                                                                            })
                                                                                .catchError((error) {
                                                                              print('حدث خطأ أثناء حذف المستند: $error');
                                                                            });
                                                                          },
                                                                          child: Text('نعم'),
                                                                        ),
                                                                        SizedBox(width: 10),
                                                                        ElevatedButton(
                                                                          onPressed: () {
                                                                            // إلغاء الحذف
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child: Text('لا'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.red,
                                                    ),
                                                    child: Container(
                                                      width: 50, // تحديد عرض الزر هنا
                                                      height: 80, // تحديد ارتفاع الزر هنا
                                                      child: Center(
                                                        child: Text(
                                                          "حذف",
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 14,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],

                                ),
                              ],
                            )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                }

                return Text("جاري التحميل");
              },
            ),

          ]
      ),
    );
  }
}
