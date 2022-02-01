import 'package:get/get.dart';
import 'package:togo_getx_project/app/data/providers/task/provider.dart';
import 'package:togo_getx_project/app/data/service/storage/repository.dart';
import 'package:togo_getx_project/app/models/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
