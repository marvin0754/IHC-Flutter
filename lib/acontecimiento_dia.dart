import 'package:flutter/material.dart';

class AcontecimientoDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acontecimiento del Dia'),
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
                    'Hay que saber escoger con exactitud del día o de la noche la hora para realizar con éxito cualquier actividad de la realidad.'),
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
                        'https://www.samaelgnosis.net/cabala/dia_ocelotl.gif'),
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
                      child: Text('Fecha de nacimiento 1932',
                          style: TextStyle(
                            color: Colors.brown,
                          )),
                    ),
                    Center(
                      child: Text('Fecha a investigar 14 Mayo 1969',
                          style: TextStyle(
                            color: Colors.brown,
                          )),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      alignment: Alignment.center,
                      child: Text('Fijar hora del Acontecimiento: 9 A.M.\n\n' +
                          'PASO 1\n' +
                          'Dia 14=1+4=5\n' +
                          'Mes 5\n' +
                          'Año 1969=1+9+6+9=25=2+5=7\n\n' +
                          'PASO2\n' +
                          '5+5+7=17=1+7=8\n' +
                          '8 + 5Tonica Fundamental =13=1+3=4 Tonica del dia 14/5/69\n\n' +
                          'PASO3\n' +
                          'Significado del 4: Relacionado a los negocios. Saber que hacer.\n' +
                          '4tonica del dia+9A.M.=13=1+3= 4 Acontecimiento del dia\n\n' +
                          'SIGNICADO 4 ACONTECIMIENTO DEL DIA:\nPoder gestionar las actividades de forma eficiente.'),
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
