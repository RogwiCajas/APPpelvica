import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/Menu/detalle.dart';
import 'package:pelvica/main.dart';

class SubMenu extends StatefulWidget {
  const SubMenu(
      {super.key,
      required this.titulo,
      required this.opcionesDescripcion,
      required this.opcionesLink});
  final String titulo;
  final Map<String, String> opcionesDescripcion;
  final Map<String, String> opcionesLink;

  @override
  State<SubMenu> createState() => _SubMenuState(
      titulo: titulo,
      opcionesDescripcion: opcionesDescripcion,
      opcionesLink: opcionesLink);
}

class _SubMenuState extends State<SubMenu> {
  final String titulo;
  final Map<String, String> opcionesDescripcion;
  final Map<String, String> opcionesLink;
  void goDetalle(context, titulo, descripcion, link) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Detalle(
          titulo: titulo,
          descripcion: descripcion,
          link: link,
        ),
      ),
    );
  }

  _SubMenuState(
      {required this.titulo,
      required this.opcionesDescripcion,
      required this.opcionesLink});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 100,
          backgroundColor: mainColor,
          title: Center(
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: ListView.builder(
                    itemCount: opcionesLink.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                            alignment: Alignment.center,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () async {
                            goDetalle(
                                context,
                                opcionesDescripcion.keys.toList()[index],
                                opcionesDescripcion.values.toList()[index],
                                opcionesLink.values.toList()[index]);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                textScaler: TextScaler.noScaling,
                                opcionesDescripcion.keys.toList()[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              width: double.infinity,
              height: 100,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.supervised_user_circle,
                    size: 50,
                    color: mainColor,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
