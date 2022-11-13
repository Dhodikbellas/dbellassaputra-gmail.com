import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:router_dhodikk/page/first_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  static final String title = 'Dhodik Balla Saputra';

  @override
  Widget build(BuildContext context)  => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.red),
        home: FirstPage(),
      );
      
}
