import 'package:book_api/controllers/book_controller.dart';
import 'package:book_api/utils/contants.dart';
import 'package:book_api/views/book_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        title: 'Book Api',
        theme: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            backgroundColor: customPurple,
          ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.deepPurple,
        ),
        home: const BookListPage(),
      ),
    );
  }
}
