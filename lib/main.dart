import 'package:bloc_demo/fetch_data/screen/user_screen.dart';
import 'package:bloc_demo/network/repository/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RepositoryProvider(
        create: (context) => ApiClient(),
        child: const UserScreen(),
      ),
    );
  }
}
