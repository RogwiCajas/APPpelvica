import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/constants.dart';
import 'package:pelvica/main.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Detalle extends StatefulWidget {
  const Detalle(
      {super.key,
      required this.titulo,
      required this.link,
      required this.descripcion});
  final String titulo;
  final String link;
  final String descripcion;

  @override
  State<Detalle> createState() =>
      _DetalleState(titulo: titulo, descripcion: descripcion, link: link);
}

class _DetalleState extends State<Detalle> {
  final String titulo;
  final String descripcion;
  final String link;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: YoutubePlayerController.convertUrlToId(link)!,
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
    super.initState();
  }

  _DetalleState(
      {required this.titulo, required this.descripcion, required this.link});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: mainColor),
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
                    children: [
                      Container(
                        height: size.height * 0.35,
                        width: double.infinity,
                        color: mainColor,
                        child: YoutubePlayer(
                          controller: _controller,
                          aspectRatio: 16 / 9,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "¡Bienvenida otra vez! Recuerda siempre controlar tu respiración y postura al momento de realizar los ejercicios. Anda a tu ritmo sin forzarte demasiado, todo es un proceso ¡Vamos con todo! ",
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                  ),
                  // Icon(
                  //   Icons.supervised_user_circle,
                  //   size: 50,
                  //   color: mainColor,
                  // )
                ],
              ),
            ),
          ],
        ));
  }
}
