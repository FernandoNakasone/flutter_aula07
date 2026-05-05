 
import 'package:flutter/material.dart';
 
void main() => runApp(VotacaoApp());
 
class VotacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VotacaoPage());
  }
}
 
class VotacaoPage extends StatefulWidget {
  @override
  State<VotacaoPage> createState() => _VotacaoPageState();
}

class _VotacaoPageState extends State<VotacaoPage> {
  int gatos = 0;
  int cachorros = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Votação")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🐱 Gatos: $gatos   🐶 Cachorros: $cachorros',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 16),
            Text(
              verificarResultado(gatos, cachorros),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    gatos++;
                  });
                }, child: Text("Votar em Gatos")),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cachorros++;
                    });
                  },
                  child: Text("Votar em Cachorros"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  gatos = 0;
                  cachorros = 0;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text("Resetar"),
            ),
          ],
        ),
      ),
    );
  }
}

String verificarResultado(gatos, cachorros){
  if(gatos > cachorros){
    return 'Vencendo: Gatos';
  } else if (cachorros > gatos) {
    return 'Vencendo: Cachorros';
  }
  return 'Empate';
}
 