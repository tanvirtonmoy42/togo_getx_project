import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:togo_getx_project/app/data/service/storage/services.dart';
import 'package:togo_getx_project/app/models/home/binding.dart';
import 'package:togo_getx_project/app/models/home/view.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
