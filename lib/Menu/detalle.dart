import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelvica/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
  );

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
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.35,
                      child: YoutubePlayer(
                        controller: controller,
                        liveUIColor: mainColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      descripcion,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
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
