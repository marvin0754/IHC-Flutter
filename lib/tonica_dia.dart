import 'package:flutter/material.dart';

class TonicaDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tonica del Dia'),
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
                    'La Tónica del Día, se calcula sumando la Tónica Fundamental, más la suma cabalística de la fecha que hemos escogido.'),
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
                        'https://www.samaelgnosis.net/cabala/dia_calli.gif'),
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
                      child: Text('Día 30 de Abril de 1969.',
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
                          'Dia 30=3+0=3\n' +
                          'Mes 04=4\n' +
                          'Año 1969=1+9+6+9=25=2+5=7\n\n' +
                          'PASO2\n' +
                          '3+4+7=14=1+4=5+5Tonica Fundamental=10\n\n' +
                          'PASO3\n' +
                          '10= 1+0= 1\n' +
                          '(10)*TONICA DEL DIA\n' +
                          '(1)*TONICA DEL DIA\n\n' +
                          'SIGNIFICADO 1 Y 10: \nEl 10 es la rueda de la Fortuna,Cambio. El 1 es Iniciativa' +
                          'lo que empieza, lo que comienza, la originalidad, el Esfuerzo.'),
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
