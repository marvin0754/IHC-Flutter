import 'package:flutter/material.dart';

class TonicaFundamental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tonica Fundamental'),
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
                    'La tónica fundamental es la urgencia interior más la suma cabalística del número de letras del nombre completo.'),
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
                        'https://www.samaelgnosis.net/cabala/calli_dia.gif'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child:
                          Text('1.- Ejemplo: VÍCTOR MANUEL CHÁVEZ CABALLERO:',
                              style: TextStyle(
                                color: Colors.brown,
                                fontSize: 18,
                              )),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      alignment: Alignment.center,
                      child: Text('Urgencia Interior: 5\n\n' +
                          'PASO 1\n' +
                          'n(V I C T O R )=6\n' +
                          'n(MANUEL)=6\n' +
                          'n(CHAVEZ)=6\n' +
                          'n(CABALLERO)=9\n\n' +
                          'PASO2\n' +
                          '6+6+6+9=27=2+7=9\n\n' +
                          'PASO3\n' +
                          '9 + 5Urgencia Interior= 14=1+4=(5)*TONICA DEL DIA\n\n' +
                          'SIGNIFICADO 5: El 5 siempre vive pensando, razonando, analizando.'),
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
