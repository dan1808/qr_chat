import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_chat/pages/home_page.dart';
import 'package:qr_chat/pages/mapa_page.dart';
import 'package:qr_chat/providers/uiprovider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new Uiprovider()),
        //instancia de uiProvider
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QR App',
          initialRoute: 'home',
          routes: {
            'home': (_) => HomePage(),
            'mapa': (_) => MapaPage(),
          },
          theme: ThemeData.dark()),
    );
  }
}
