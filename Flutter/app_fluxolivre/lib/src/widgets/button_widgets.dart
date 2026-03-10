import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {



  final String texto;
  final void Function() onClik;

  const ButtonWidget({
    required this.texto,
    required this.onClik,
    super.key,
    });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed:
                     onClik, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 7, 31, 248),
                    fixedSize: const Size(130, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    texto,
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 15, 143),
                      fontSize: 30,
                    ),
                  ),
                );
  }
}