import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miapp2/tonica_dia.dart';
import 'resultados.dart';
import 'urgencia_interior.dart';
import 'tonica_fundamental.dart';
import 'tonica_dia.dart';
import 'acontecimiento_dia.dart';
import 'cabala_anio.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudio Numerologico"),
      ),
      body: Center(
        child: ContenidoMain(),
      ),
      drawer: Container(
        width: 230,
        child: _menu(context),
      ),
    );
  }
}

Widget _menu(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 230,
                height: 160.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/4d/8b/06/4d8b06544e4e8f87f57d1dd22ba33463.jpg'),
                  ),
                ),
              ),
              Container(
                width: 230,
                height: 49,
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Text(
                  'Descubre el Futuro',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'rlight',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          height: 406,
          // color: Colors.orange[100],
          child: Column(
            children: <Widget>[
              _listado(context, 'Urgencia Interior'),
              _listado(context, 'Tonica Fundamental'),
              _listado(context, 'Tonica del Dia'),
              _listado(context, 'Acontecimiento del dia'),
              _listado(context, 'Cabala del Año'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _listado(context, String subtitle) {
  return ListTile(
    title: Text(subtitle),
    leading: Icon(Icons.nightlight_round),
    trailing: Icon(Icons.arrow_right),
    onTap: () {
      // Update the state of the app
      // ...
      // Then close the drawer
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        switch (subtitle) {
          case 'Urgencia Interior':
            return UrgenciaInterior();
            break;
          case 'Tonica Fundamental':
            return TonicaFundamental();
            break;
          case 'Tonica del Dia':
            return TonicaDia();
            break;
          case 'Acontecimiento del dia':
            return AcontecimientoDia();
            break;
          case 'Cabala del Año':
            return CabalaAnio();
            break;
        }
      }));
    },
  );
}

// Pagina de Inicio
class ContenidoMain extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final titleControllerNombre = TextEditingController();
  final titleControllerFecha = TextEditingController();

  Widget _nombre() {
    return TextFormField(
      controller: titleControllerNombre,
      decoration: InputDecoration(
        labelText: 'Ingrese su Nombre',
      ),
      validator: (valor) {
        if (valor.isNotEmpty) {
          if (valor.trim() != '') {
            return verficarnombre(valor) && valor.length < 25
                ? null
                : 'No es valido';
          } else {
            return 'Esta vacio';
          }
        } else {
          return '';
        }
      },
    );
  }

  bool verficarnombre(String nombre) {
    List<String> glosary;
    glosary = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z',
      ' ',
    ];
    bool val = true;
    int cont = 0;
    for (var i = 0; i < nombre.length; i++) {
      for (var j = 0; j < glosary.length; j++) {
        if (glosary[j] == nombre.substring(i, i + 1).toLowerCase()) {
          cont++;
        }
      }
      if (cont >= 1) {
        cont = 0;
        val = true;
      } else {
        val = false;
        break;
      }
    }
    return val;
  }

  Widget _fecha() {
    return TextFormField(
      controller: titleControllerFecha,
      decoration: InputDecoration(
        labelText: 'Fecha de Nac. DD-MM-YYYY',
      ),
      validator: (valor) {
        if (valor.isNotEmpty) {
          return verificarfecha(valor)
              ? null
              : "Pon una fecha Valida Ejem: 24-02-1997";
        } else {
          return '';
        }
      },
    );
  }

  bool verificarfecha(String fecha) {
    bool confirm = false;
    var wordlist = fecha.split('-');
    if (wordlist.length == 3) {
      //Comprobar el largo de las cadenas
      confirm = (wordlist[0].length == 2 &&
              wordlist[1].length == 2 &&
              wordlist[2].length == 4)
          ? true
          : false;
      if (confirm) {
        //Comprobar si son Numeros
        for (var i = 0; i < 3; i++) {
          confirm = (int.tryParse(wordlist[i]) != null) ? true : false;
          if (!confirm) {
            break;
          }
        }
        //Comprobar la fecha
        if (confirm) {
          int anio = int.tryParse(wordlist[2]);
          int mes = int.tryParse(wordlist[1]);
          int dia = int.tryParse(wordlist[0]);

          if (anio >= 1950 && groupmonth(mes) > 0 && dia > 0) {
            switch (groupmonth(mes)) {
              case 1:
                confirm = (dia <= 31) ? true : false;
                break;
              case 2:
                confirm = (dia <= 30) ? true : false;
                break;
              case 3:
                if (bisiesto(anio)) {
                  confirm = (dia <= 29) ? true : false;
                } else {
                  confirm = (dia <= 28) ? true : false;
                }
                break;
            }
          } else {
            confirm = false;
          }
        }
      }
    }
    return confirm;
  }

  int groupmonth(int mes) {
    //retorna a que grupo pertenece cada mes por su numero de dias o 0 si el mes no es valido
    if (mes == 1 ||
        mes == 3 ||
        mes == 5 ||
        mes == 7 ||
        mes == 8 ||
        mes == 10 ||
        mes == 12) {
      return 1; //meses con 31dias
    } else if (mes == 4 || mes == 6 || mes == 9 || mes == 11) {
      return 2; //meses con 30dias
    } else if (mes == 02) {
      return 3; //mes con 28 o 29dias
    }
    return 0; //mes no valido
  }

  bool bisiesto(int anio) {
    if (anio % 4 == 0 && anio % 100 != 0) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 600,
        color: Colors.orange[100],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 130,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://ep01.epimg.net/verne/imagenes/2020/05/20/mexico/1589933812_744351_1589934029_noticia_normal.jpg'),
                  ),
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Colors.black.withOpacity(0.2),
                //     width: 1.5,
                //   ),
                // ),
                margin: EdgeInsets.symmetric(vertical: 5),
                width: 250,
                height: 235,
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: <Widget>[
                      _nombre(),
                      _fecha(),
                      SizedBox(
                        height: 15.0,
                      ),
                      RaisedButton(
                        color: Colors.orange.withOpacity(0.4),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            Map dat = {
                              "nombre": titleControllerNombre.text,
                              "fecha": titleControllerFecha.text
                            };
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Resultados(
                                data: dat,
                              ),
                            ));
                            // print('->' + titleControllerNombre.text);
                            // print('->' + titleControllerFecha.text);
                          }
                          return null;
                        },
                        child: Text(
                          'Enviar Datos',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Fin de la Pagina de Inicio
