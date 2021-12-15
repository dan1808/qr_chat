import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_chat/providers/uiprovider.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiprovider = Provider.of<Uiprovider>(context);
    final currentIndex = uiprovider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiprovider.selectedMenuOpt = i,
      currentIndex: currentIndex, //para ver cual se va a quedar seleccionado
      elevation: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: 'Direcciones')
      ],
    );
  }
}
