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
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Acesso Liberado",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
            ),              
            ),
            Text("0",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                )
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(onPressed: void Hey() => ola, child: Text("ola", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 60, fontWeight: FontWeight.w500))),
              ElevatedButton(onPressed: null, child: Text("mundo", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 60, fontWeight: FontWeight.w500)))
            ])
            ],
        ),
      )
    );
  }
}