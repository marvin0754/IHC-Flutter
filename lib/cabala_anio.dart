import 'package:flutter/material.dart';

class CabalaAnio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cabala del Año'),
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
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text('La Ley del Karma se desarrolla con los Números.'),
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
                        'https://www.samaelgnosis.net/cabala/acatl_dia.gif'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      child: Text('1.- Ejemplo: EDUARDO DEL PORTILLO',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                          )),
                    ),
                    Center(
                      child: Text('Fecha de nacimiento 1932',
                          style: TextStyle(
                            color: Colors.brown,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      child: Text(
                        '1.- 1932 -> 1+9+3+2 = 15 + 1932=1947\n\n' +
                            '2.- 1947 -> 1+9+4+7 = 21 + 1947=1968\n' +
                            '            *(21) Arcano numero 21\n' +
                            '            2+1=*(3) Arcano numero 3\n\n' +
                            '3.-1968 -> 1+9+6+8 = 24+1968= 1992\n' +
                            '            *(24) Arcano numero 24\n' +
                            '            2+4*(6)Arcano numero 6\n\n' +
                            '4.-1992 -> 1+9+9+2=21\n' +
                            '            *(21)Arcano numero 21\n',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
