import 'package:get/get.dart';
import 'package:todo_getx/app/data/modules/home/controller.dart';
import 'package:todo_getx/app/data/provider/task/provider.dart';
import 'package:todo_getx/app/data/services/repository.dart';

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
