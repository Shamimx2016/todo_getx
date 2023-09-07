import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_getx/app/data/modules/home/binding.dart';
import 'package:todo_getx/app/data/modules/home/view.dart';
import 'package:get/get.dart';
import 'package:todo_getx/app/data/services/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List-Getx',
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
