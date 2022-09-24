import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformCheck extends StatelessWidget {
  const PlatformCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? const CircularProgressIndicator() : const CupertinoActivityIndicator();
  }
}
