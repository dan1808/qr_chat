import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_chat/pages/direcciones_page.dart';
import 'package:qr_chat/pages/mapas_page.dart';
import 'package:qr_chat/providers/uiprovider.dart';
import 'package:qr_chat/providers/uiprovider.dart';
import 'package:qr_chat/widgets/custom_navigatorbar.dart';
import 'package:qr_chat/widgets/scan_buton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
        ],
      ),
      body: _HomepageBody(), //para que traiga el center de la otra pagina
      bottomNavigationBar: CustomNavigatorBar(),
      //trae el widget
      floatingActionButton: ScanButoon(), //trae el button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //lo pone al centro de la aplicacion
    );
  }
}

class _HomepageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //obetner el selected Menu opt
    final uiprovider = Provider.of<Uiprovider>(context);
    final currentIndex = uiprovider.selectedMenuOpt; //depende del valor cambia
    switch (currentIndex) {
      //condicional
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage(); //retorno por defecto
    }
  }
}
