import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FutureAsyncAwait extends GetView<FutureController> {
  const FutureAsyncAwait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FutureController());
    return Obx(() {
      var a = controller.resultFuture.value;
      if (a != 0) {
        return Center(
          child: Text('Value is $a.'),
        );
      } else {
        return const CircularProgressIndicator();
      }
    });
  }

}

class FutureController extends GetxController {
  var resultFuture = 0.obs;

  futureNumber() async {
    // 3초후 100이 상자에서 나온다.
    var a = await Future<int>.delayed(const Duration(seconds: 3), () {
      return 100;
    });
    resultFuture(a);
  }

  @override
  void onInit() {
    super.onInit();
    futureNumber();
  }
}
