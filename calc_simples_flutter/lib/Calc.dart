import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          ":: Calculadora - Simples ::"),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            // Campo de texto para exibir o resultado
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
            ),

            // Campo de texto para solicitar o valor 1
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),

            // Campo de texto para solicitar o valor 2
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
            ),

            // Espaçamento depois dos inputs
            new Padding(
              padding: const EdgeInsets.only(top: 20)
            ),

            // Botão +
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),

                  color: Colors.blueAccent,
                  onPressed: somar,
                ),

                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),

                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),
              ],
            ),
            
            new Padding(
              padding: const EdgeInsets.only(top: 20)
            ),
            
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),

                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                ),

                new MaterialButton(
                  child: new Text(
                    "/",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                  ),

                  color: Colors.blueAccent,
                  onPressed: dividir,
                ),
              ],
            ),
               
            //Espaçamento dps dos botões
            new Padding(
              padding: const EdgeInsets.only(top: 20)
            ),
              
            // Botão Limpar
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child:  Text("Limpar"),
                  color: Colors.grey,
                  onPressed: limpar),
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

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

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