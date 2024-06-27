import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_page/controller/cart_controller.dart';
import 'package:shop_page/views/homepage.dart';

void main(List<String> args) {
  runApp(MainRunner());
}

class MainRunner extends StatelessWidget {
  const MainRunner({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return CartController();
          },
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          home: Homepage(),
        );
      },
    );
  }
}
