import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/Menu/menu.dart';

void main() {
  runApp(const MyApp());
}

const mainColor = Color(0xffe47c90);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelvica APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DATOS PERSONALES'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  int progressStep = 0;
  late PageController progressController;

  //step2:

  bool isEmbarazo = false;
  bool isPostParto = false;
  TextEditingController mesanioController = TextEditingController();

  void _goToNextStep() {
    setState(() {
      if (progressStep == 0 &&
          nameController.text != "" &&
          ageController.text != "") {
        progressStep = 1;
        progressController.nextPage(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 500),
        );
      } else if (progressStep == 1 &&
          (isEmbarazo || isPostParto) &&
          mesanioController.text != "") {
        progressStep = 2;
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const Menu()));

        // progressController.nextPage(
        //   curve: Curves.linear,
        //   duration: const Duration(milliseconds: 500),
        // );
      }
    });
  }

  @override
  void initState() {
    progressController =
        PageController(initialPage: progressStep, keepPage: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: mainColor,
        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: progressController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                //paso1: nombre, edad
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "INGRESA TU NOMBRE",
                      style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: TextField(
                        controller: nameController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                        cursorColor: Colors.purple,
                        decoration: InputDecoration(
                          hintText: "",
                          enabled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: Colors.purple,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: mainColor,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 1),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: Colors.grey,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "INGRESA TU EDAD",
                      style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: TextField(
                        controller: ageController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLines: 1,
                        cursorColor: Colors.purple,
                        decoration: InputDecoration(
                          hintText: "",
                          enabled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: Colors.purple,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: mainColor,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 1),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: Colors.grey,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //paso2; estado actual
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ESTADO ACTUAL",
                      style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                              value: isEmbarazo,
                              activeColor: mainColor,
                              toggleable: true,
                              groupValue: true,
                              onChanged: (value) {
                                setState(() {
                                  isEmbarazo = !isEmbarazo;
                                  if (isPostParto) isPostParto = !isPostParto;
                                });
                              }),
                          const Text(
                            "EMBARAZO",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                              value: isPostParto,
                              activeColor: mainColor,
                              toggleable: true,
                              groupValue: true,
                              onChanged: (value) {
                                setState(() {
                                  isPostParto = !isPostParto;
                                  if (isEmbarazo) isEmbarazo = !isEmbarazo;
                                });
                              }),
                          const Text(
                            "POST PARTO",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    if (isEmbarazo || isPostParto)
                      Text(
                        isPostParto ? "# DE HIJOS" : "# DE MESES",
                        style: const TextStyle(
                            fontSize: 18,
                            color: mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (isEmbarazo || isPostParto)
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: TextField(
                          controller: mesanioController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          cursorColor: Colors.purple,
                          decoration: InputDecoration(
                            hintText: "",
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                  color: Colors.purple,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                  width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                  color: mainColor,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                  width: 1),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                  width: 1),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                //paso3: aceptacion

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                          borderRadius: BorderRadius.circular(6)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Deseas guardar tu información?",
                            style: TextStyle(
                                fontSize: 16,
                                color: mainColor,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: mainColor,
                                    alignment: Alignment.center,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () async {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        textScaler: TextScaler.noScaling,
                                        'Ok',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: mainColor,
                                    alignment: Alignment.center,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () async {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        textScaler: TextScaler.noScaling,
                                        'Cancelar',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Bottom Progress Indicator
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            width: double.infinity,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    alignment: Alignment.center,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () async {
                    _goToNextStep();
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        textScaler: TextScaler.noScaling,
                        'Continuar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: mainColor.withOpacity(0.5)),
                    ),
                    Container(
                      width: size.width * (progressStep / 2),
                      height: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: mainColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
