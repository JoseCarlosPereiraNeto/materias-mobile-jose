import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Acesso Liberado",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "0",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 60,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed:
                      () {}, // Alterado de null para habilitar a cor do botão
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 7, 31, 248),
                    fixedSize: const Size(130, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Sair",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 15, 143),
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed:
                      () {}, // Alterado de null para habilitar a cor do botão
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAFAE24),
                    fixedSize: const Size(130, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: Color(0xFF031cF5), fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
