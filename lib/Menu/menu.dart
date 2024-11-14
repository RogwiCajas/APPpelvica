import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/Menu/submenu.dart';
import 'package:pelvica/main.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

void goToNext(context, titulo, opciones, links) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => SubMenu(
        titulo: titulo,
        opcionesDescripcion: opciones,
        opcionesLink: links,
      ),
    ),
  );
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          // backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'PLANES \nDISPONIBLES',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22, color: mainColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Spacer(),
                  SizedBox(
                    width: 200,
                    height: 60,
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
                        Map<String, String> opciones = {
                          "Conoce tu piso pélvico": "Descripcion",
                          "Activación Básica": "Descripción",
                          "Control y resistencia": "Descripción",
                          "Tonificación": "Descripción",
                          "Relajación": "Descripción",
                        };
                        Map<String, String> links = {
                          "Conoce tu piso pélvico": "Descripcion",
                          "Activación Básica": "Descripción",
                          "Control y resistencia": "Descripción",
                          "Tonificación": "Descripción",
                          "Relajación": "Descripción",
                        };
                        goToNext(context, 'PISO PÉLVICO', opciones, links);
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            textScaler: TextScaler.noScaling,
                            'PISO PÉLVICO',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 200,
                    height: 60,
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
                        Map<String, String> opciones = {
                          "Respira y relaja": "Descripcion",
                          "Posturas fundamentales": "Descripción",
                          "Movimientos": "Descripción",
                          "Tonificación": "Descripción",
                        };
                        Map<String, String> links = {
                          "Respira y relaja": "Descripcion",
                          "Posturas fundamentales": "Descripción",
                          "Movimientos": "Descripción",
                          "Tonificación": "Descripción",
                        };
                        goToNext(context, 'HIPOPRESIVOS', opciones, links);
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            textScaler: TextScaler.noScaling,
                            'HIPOPRESIVOS',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 200,
                    height: 60,
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
                        Map<String, String> opciones = {
                          "Conoce tu piso pélvico": "Descripcion",
                          "Activación Básica": "Descripción",
                        };
                        Map<String, String> links = {
                          "Conoce tu piso pélvico": "link",
                          "Activación Básica": "link",
                        };
                        // goToNext(context, 'CORE', opciones, links);
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            textScaler: TextScaler.noScaling,
                            'CORE',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 200,
                    height: 60,
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
                        Map<String, String> opciones = {
                          "Conoce tu piso pélvico": "Descripcion",
                          "Activación Básica": "Descripción",
                          "Control y resistencia": "Descripción",
                          "Tonificación": "Descripción",
                          "Relajación": "Descripción",
                        };
                        Map<String, String> links = {
                          "Conoce tu piso pélvico": "Descripcion",
                          "Activación Básica": "Descripción",
                          "Control y resistencia": "Descripción",
                          "Tonificación": "Descripción",
                          "Relajación": "Descripción",
                        };
                        // goToNext(context, 'NUTRICIÓN', opciones, links);
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            textScaler: TextScaler.noScaling,
                            'NUTRICIÓN',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )),
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
