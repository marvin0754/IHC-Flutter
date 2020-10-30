import 'package:flutter/material.dart';
import 'package:miapp2/db/database.dart';
import 'dart:math';

class Resultados extends StatefulWidget {
  final Map data;

  Resultados({this.data});
  @override
  MostrarResultados createState() => MostrarResultados();
}

class MostrarResultados extends State<Resultados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados de su Busqueda',
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontFamily: 'rlight',
              fontSize: 15,
            )),
      ),
      body: Center(
        // child: Text('d'),
        child: processData(
            widget.data['nombre'].toString(), widget.data['fecha'].toString()),
      ),
    );
  }

  Widget processData(_nombre, _fecha) {
    var rdn = new Random();
    int numrand = rdn.nextInt(11) + 1;
    int u = urgenciaInterior(_fecha);
    int tf = tonicaFundamental(_nombre, u);
    List<int> td = tonicaDia(time(), tf);
    int tdf = (td.length == 2) ? td[1] : td[0];
    int ac = acontecimientoDia(numrand, tdf);
    List<Map> cab = cabala(_fecha);
    return Container(
      color: Colors.orange[100],
      width: 400,
      height: 800,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'RESULTADOS: ' + _nombre,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://lh3.googleusercontent.com/proxy/olpz8IjDuHjv76f_lTFN0ngEt0g4JdX1Uj3zI8FDwr2rQF8SYGoCaeVcpUtKDZwtwT1PeMis6FU5lev1ROmm5Jm8taXBCVd0E70A0AmeY509F8Fa5lySI6FfAq8CSD9RkkZuHvft_xEeWPYKxCRR9Vj_AD7YFYSmS8FxlHsXU5WLMfmRLKSb6UeHhfFGIG_VDO8IN0F4-tkOppoZ5zfdj4zX4fxSl74Cqw'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'URGENCIA INTERIOR: ' + u.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(MiBase().urgencia(u)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'TONICA FUNDAMENTAL : ' + tf.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(MiBase().tonicafun(tf)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'TONICA DEL DIA: ' + tdf.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(MiBase().tonica(tdf)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'ACONTECIMIENTO DEL DIA(' +
                      numrand.toString() +
                      ' A.M.): ' +
                      ac.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(MiBase().numero(ac)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'CABALA: ' + urgenciaInterior(_fecha).toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(kabala(cab)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Comprimir
  String kabala(List<Map> cab) {
    String cabalia = '';
    for (var i = 0; i < 5; i++) {
      cabalia += cab[i]["anio"].toString() +
          "; numero regente:" +
          cab[i]["cabala"].toString() +
          "\n";
    }
    return cabalia;
  }

  // metodo1
  int urgenciaInterior(String fechanac) {
    var listfech = fechanac.split("-");
    int dia = int.tryParse(listfech[0]);
    int mes = int.tryParse(listfech[1]);
    int anio = int.tryParse(listfech[2]);
    int numero =
        descomponer(descomponer(dia) + descomponer(mes) + descomponer(anio));
    return numero;
  }

  // metodo2
  int tonicaFundamental(String nombre, int urgencia) {
    var listnombre = nombre.split(" ");
    int numero = 0;
    for (var i = 0; i < listnombre.length; i++) {
      numero += descomponer(listnombre[0].length);
    }
    return descomponer(descomponer(numero) + urgencia);
  }

  // metodo3
  dynamic tonicaDia(String fech, int tonicaFund) {
    List<int> listnums = [];
    var listfech = fech.split("-");
    int dia = int.tryParse(listfech[0]);
    int mes = int.tryParse(listfech[1]);
    int anio = int.tryParse(listfech[2]);

    int suma =
        descomponer(descomponer(dia) + descomponer(mes) + descomponer(anio));
    suma = suma + tonicaFund;
    listnums.add(suma);
    if (suma >= 10) {
      listnums.add(descomponer(suma));
    }
    return listnums;
  }

  // metodo4
  int acontecimientoDia(int hora, int tonicadia) {
    return descomponer(hora + tonicadia);
  }

  // metodo5
  dynamic cabala(String fech) {
    List<Map> listcabalas = [];
    var listfech = fech.split("-");
    int anio = int.tryParse(listfech[2]);
    int agregado = descomponer(anio);
    // Ciclos:5
    for (var i = 0; i < 5; i++) {
      anio = anio + agregado;
      agregado = descomponer(anio);
      listcabalas.add(
        {
          "anio": anio,
          "cabala": agregado,
        },
      );
    }
    return listcabalas;
  }

  int descomponer(int numero) {
    while (numero >= 10) {
      var descomponer = numero.toString();
      var listdescomponer = descomponer.split('');
      numero = 0;
      for (var i = 0; i < listdescomponer.length; i++) {
        numero += int.tryParse(listdescomponer[i]);
      }
    }
    return numero;
  }
}

String time() {
  DateTime now = new DateTime.now();
  String time = "${now.day}".padLeft(2, '0') +
      "-${now.month}".padLeft(2, '0') +
      "-${now.year}";
  return time;
}
