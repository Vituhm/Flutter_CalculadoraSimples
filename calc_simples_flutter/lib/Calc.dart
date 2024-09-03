import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ":: Calculadora - Simples ::"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            // Campo de texto para exibir o resultado
            Text(
              "Resultado: $resultado",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
            ),

            // Campo de texto para solicitar o valor 1
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),

            // Campo de texto para solicitar o valor 2
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
            ),

            // Espaçamento depois dos inputs
            const Padding(
              padding: const EdgeInsets.only(top: 20)
            ),

            // Botão +
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: somar,
                  child: new Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),
                ),

                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                  child: new Text(
                    "-",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),
                ),
              ],
            ),
            
            const Padding(
              padding: const EdgeInsets.only(top: 20)
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                  child: new Text(
                    "*",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),
                ),

                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: dividir,
                  child: new Text(
                    "/",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),
                ),
              ],
            ),
               
            //Espaçamento dps dos botões
            const Padding(
              padding: const EdgeInsets.only(top: 20)
            ),
              
            // Botão Limpar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.grey,
                  onPressed: limpar,
                  child:  Text("Limpar")),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  // Atributos
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  // Métodos
  void somar() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }
  void multiplicar() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 * num2;
    });
  }
  void dividir() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void limpar(){
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}