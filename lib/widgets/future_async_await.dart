import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FutureAsyncAwait extends StatelessWidget {
  const FutureAsyncAwait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder 테스트'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: helloWorld(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text('스냅샷 데이터: ${snapshot.data.toString()}');
            } else if (snapshot.hasData == false) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Text('스냅샷 에러');
            } else {
              return const Text('혹시 몰라서 else문 추가');
            }
          },
        ),
      ),
    );
  }

  Future<String> helloWorld() {
    return Future.delayed(const Duration(seconds: 5), () {
      return 'Hello World';
    });
  }
}
