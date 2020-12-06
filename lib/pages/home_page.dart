import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

void getHttp() async {
  try {
    Response response;
    response = await Dio().get()
  } catch (e) {
    return print(e);
  }
}
