import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testgetdata/provider/cart_provider.dart';
import 'package:testgetdata/views/splash_screen.dart';
import 'package:testgetdata/views/tenant.dart';
import 'views/list_tenant.dart';
import 'package:testgetdata/views/cart.dart';
import '';

// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (context) => CartProvider(),
//       child: SplashScreen(),
//     )
//   );
// }

//ini main.dartku dan
// import 'package:flutter/material.dart';
// import 'views/tenant_foods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'MasBro',
        theme: ThemeData(),
        home: const SplashScreen(),
      ),
    );
  }
}