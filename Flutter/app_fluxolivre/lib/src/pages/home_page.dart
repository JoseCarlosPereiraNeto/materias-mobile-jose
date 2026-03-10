import 'package:app_fluxolivre/src/widgets/button_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int count =0;

void increment(){
  setState(() {
    count ++;
  });
}

void decrement(){
  setState(() {
    count --;
  });
}

bool get estaVazio => count == 0;
bool get estaCheio => count == 15;

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
              estaCheio ? "Acesso Bloqueado" : "Acesso Liberado",
             
              style: TextStyle(
                color: estaCheio ? Color(0xFFFF0000) : Color(0xFFFFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
             count.toString(),
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 60,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(texto: 'sair', onClik: estaVazio ? () {} : decrement,),
                ButtonWidget(texto: 'Entrar', onClik: estaCheio ? () {} : increment, ),     
              ],
            ),
          ],
        ),
      ),
    );
  }
}
