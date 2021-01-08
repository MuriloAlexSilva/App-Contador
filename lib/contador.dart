import 'package:material.dart';

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int quantidade = 0;

  incrementar() {
    //Metodo para incrementar
    setState(() {
      quantidade++;
    });
  }

  decrementar() {
    //metodo para decrementar
    setState(() {
      quantidade--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Contador"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: [
                    Text(
                      "Quantidade",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[500]),
                    ),
                    Text(
                      "$quantidade",
                      style: TextStyle(fontSize: 40, color: Colors.blue[100]),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: incrementar,
                          child: Text("Incrementar",
                              style: TextStyle(fontSize: 20)),
                        ),
                        FlatButton(
                          onPressed: decrementar,
                          child: Text("Decrementar",
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
