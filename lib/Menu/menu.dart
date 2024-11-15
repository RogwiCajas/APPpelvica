import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/Menu/submenu.dart';
import 'package:pelvica/constants.dart';
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
              child: SingleChildScrollView(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 15),
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
                              "1. Introducción": "Descripcion",
                              "2. Conoce tu piso pélvico": "Descripcion",
                              "3. Tonificación Básica": "Descripción",
                              "4. Control y Resistencia": "Descripción",
                              "5. Tonificación": "Descripción",
                            };
                            Map<String, String> links = {
                              "1. Introducción":
                                  "https://youtu.be/xN5itI-hApo?si=_CTmyGZW4Fasm8gx",
                              "2. Conoce tu piso pélvico":
                                  "https://youtu.be/ZD_YnYIv9xQ?si=S0zZai4W8JbLAwyb",
                              "3. Tonificación Básica":
                                  "https://youtu.be/E4y4V7HZacI?si=kBFe_w-1O0zIua-W",
                              "4. Control y Resistencia":
                                  "https://youtu.be/jVXz9rdc9R0?si=Y6RYJv4oYN305NCn",
                              "5. Tonificación":
                                  "https://youtu.be/WwUWV8i98V4?si=Gt2Ra6GeY49pRh0I",
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
                      Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 15),
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
                              "1. Respira y relaja": "Descripcion",
                              "2. Posturas fundamentales": "Descripción",
                              "3. Movimientos Controlados": "Descripción",
                              "4. Tonificación": "Descripción",
                            };
                            Map<String, String> links = {
                              "1. Respira y relaja":
                                  "https://youtu.be/Ea6o2jW2EeE?si=tnAIpSnwdHLaM8rK",
                              "2. Posturas fundamentales":
                                  "https://youtu.be/8Etulg9xpqY?si=Q8EhUTwku-CY7SNt",
                              "3. Movimientos Controlados":
                                  "https://youtu.be/r3Dr0JA0Dd0?si=M5tvBBmPBxAFC2Mn",
                              "4. Tonificación":
                                  "https://youtu.be/db2Qd93jvjc?si=t7Ev2ItGHqZ2GpX4",
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
                      Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 15),
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
                              "1. Estabilidad Esencial": "Descripcion",
                              "2. Tonificación": "Descripción",
                              "3. Potencia": "Descripción",
                              "4. Control y Relajación": "Descripción",
                            };
                            Map<String, String> links = {
                              "1. Estabilidad Esencial":
                                  "https://youtu.be/U8wTEcbzOEA?si=UeULMqCDohTCpoXF",
                              "2. Tonificación":
                                  "https://youtu.be/t79bVLc_f28?si=tynq8dHF9IEmr0tr",
                              "3. Potencia":
                                  "https://youtu.be/JN7zwL9YVzw?si=ku87dlldtBNxPh98",
                              "4. Control y Relajación":
                                  "https://youtu.be/JN7zwL9YVzw?si=ku87dlldtBNxPh98",
                            };
                            goToNext(context, 'CORE', opciones, links);
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
                      Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 15),
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
                      Container(
                        width: 200,
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 15),
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
                                'ACCESORIOS',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: () async {
                await storage.deleteAll();
                print('borrado');
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        IconoHome,
                        height: 50,
                        width: 54,
                      ),
                    )
                    // Icon(
                    //   Icons.supervised_user_circle,
                    //   size: 50,
                    //   color: mainColor,
                    // )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
