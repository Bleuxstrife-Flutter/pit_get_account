import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:pit_get_account/pit_get_account.dart';
import 'package:pit_permission/pit_permission.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> result = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }
  Future<void> initPlatformState() async {
    try {
      await PitPermission.requestSinglePermission(PermissionName.contact);
      result = await PitGetAccount.getAccount();
    } on PlatformException {
      print("Error");
    }
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('List Account in this device: $result \n'),
        ),
      ),
    );
  }
}
