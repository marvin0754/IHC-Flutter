import 'package:flutter/material.dart';

class UrgenciaInterior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Urgencia Interior'),
      ),
      body: Container(
        width: 400,
        height: 800,
        color: Colors.orange[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                    'La Urgencia Interior se calcula haciendo la suma cabalística de la fecha del nacimiento, el día, el mes y el año.'),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(vertical: 2),
                width: 90,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://www.samaelgnosis.net/cabala/dia_acatl.gif'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      child: Text('1.- Ejemplo: VÍCTOR MANUEL CHÁVEZ:',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                          )),
                    ),
                    Center(
                      child: Text('17 de Noviembre de 1921.',
                          style: TextStyle(
                            color: Colors.brown,
                          )),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      alignment: Alignment.center,
                      child: Text('Tónica Fundamental: 5\n\n' +
                          'PASO 1\n' +
                          'Dia 17=1+7=8\n' +
                          'Mes 11=1+1=2\n' +
                          'Año 1921=1+9+2+1=13=1+3=4\n\n' +
                          'PASO2\n' +
                          '8+2+4=14=1+4=(5)*Urgencia Interior\n\n' +
                          'SIGNIFICADO 5 URGENCIA INTERIOR: \nEl 5 es el rigor, el estudio, la Ciencia, el análisis, la investigación, el intelecto, esa Urgencia Interior lo hace razonativo.'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
