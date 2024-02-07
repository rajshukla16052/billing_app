import 'package:billing_app/utils/routes/routes.dart';
import 'package:billing_app/utils/routes/routes_name.dart';
import 'package:billing_app/view_models/auth_view_model.dart';
import 'package:billing_app/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,

        // home: const LoginScreen(),
      ),
    );
  }
}
