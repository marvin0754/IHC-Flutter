class MiBase {
  String numero(int k) {
    List<Map> tablenumero = [
      {
        'numero': 1,
        'significado':
            "El número 1 simboliza el liderazgo puro, la energía el individualismo y el egosimo material. Siente la unidad familiar y un profundo interés de ser el protagonista de todo.",
      },
      {
        'numero': 2,
        'significado':
            "El número 2 simboliza la dualidad, la pareje que puede ver los dos lados de cualquier situación y de la vida. Son personas pacíficas, amables, humildes, tímidas y muy diplomáticas.",
      },
      {
        'numero': 3,
        'significado':
            "El número 3 simboliza la expansión Són mentalmente ágiles, sensibles, talentosos, humanos y con un buen sentido del humor. Espontaneo, encantador y narcisista a la vez.",
      },
      {
        'numero': 4,
        'significado':
            "El número 4 simboliza el constructor, de mente y conciencia cuadrada representa la estabilidad, el orden, la ley y la estabilidad. Son personas de confianza y muy leales.",
      },
      {
        'numero': 5,
        'significado':
            "El número 5 simboliza la libertad, la vitalidad, la aventura , la polémica y la controversia. Son inteligentes, nervioso y no les gusta la rutina. Son personas muy curiosas y les encanta experimentar y descubrir cosas nuevas.",
      },
      {
        'numero': 6,
        'significado':
            "El número 6 simboliza la justicia y el orden. Son personas tiernas y muy atentanas con los suyos aunque no se saben entender a sí mismos. No buscan el protagonismo y siempre les gusta cumplir con los establecido.",
      },
      {
        'numero': 7,
        'significado':
            "El número 7 simboliza la seguridad y la protección. Son personas bondadosas pero inflexibles en sus pensamientos. Cariñosas con los suyos pero les gusta pasar desapercibidos.",
      },
      {
        'numero': 8,
        'significado':
            "El número 8 simboliza el poder, lo que les hacer tener un carácter muy fuerte. Son ambiciosos y amantes del éxito y del buen gusto por todo. Son personas muy dueles y cambiantes y pese a no gustarles tomar decisiones son firmes en sus ideas.",
      },
      {
        'numero': 9,
        'significado':
            "El número 9 simboliza el misticismo, lo que les hace ser personas muy sensibles, nobles donde los sentimientos fluyen y muy compasivos. Suelen tener gran capacidad sensitiva, muy receptivos y clarividentes.",
      },
    ];
    return tablenumero[k - 1]['significado'];
  }

  String urgencia(int k) {
    List<Map> tableurgencia = [
      {
        'numero': 1,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona emprendedora, original, con voluntad.",
      },
      {
        'numero': 2,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona sociable, con imaginación.",
      },
      {
        'numero': 3,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona creativa, con arte y belleza.",
      },
      {
        'numero': 4,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona firme, sólida.",
      },
      {
        'numero': 5,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona razonativa, con rigor, propensa al aprendizaje.",
      },
      {
        'numero': 6,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona cariñosa, indecisa.",
      },
      {
        'numero': 7,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona tendiente a luchar.",
      },
      {
        'numero': 8,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona paciente.",
      },
      {
        'numero': 9,
        'significado':
            "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona generosa, con ideas geniales, independiente.",
      },
    ];
    return tableurgencia[k - 1]['significado'];
  }

  String tonicafun(int k) {
    List<Map> tabletonicafun = [
      {
        'numero': 1,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que trabajar con mucha voluntad, con ideas originales, ser emprendedor.",
      },
      {
        'numero': 2,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.",
      },
      {
        'numero': 3,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.",
      },
      {
        'numero': 4,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que poner las bases firmes en sus proyectos y trabajos.",
      },
      {
        'numero': 5,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que ver el pro y el contra de todo lo que se proponga.",
      },
      {
        'numero': 6,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que ser decisivo y poner cariño a lo que haga.",
      },
      {
        'numero': 7,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que poner mucho empeño en todo lo que haga.",
      },
      {
        'numero': 8,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que ser muy paciente, saber esperar.",
      },
      {
        'numero': 9,
        'significado':
            "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que ser generosa y genial, de preferencia trabajar independientemente.",
      },
    ];
    return tabletonicafun[k - 1]['significado'];
  }

  String tonica(int k) {
    List<Map> tabletonica = [
      {
        'numero': 1,
        'significado':
            "1, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: trabajar con mucha voluntad, con ideas originales, ser emprendedor.",
      },
      {
        'numero': 2,
        'significado':
            "2, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.",
      },
      {
        'numero': 3,
        'significado':
            "3, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.",
      },
      {
        'numero': 4,
        'significado':
            "4, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: poner las bases firmes en sus proyectos y trabajos.",
      },
      {
        'numero': 5,
        'significado':
            "5, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: ver el pro y el contra de todo lo que se proponga.",
      },
      {
        'numero': 6,
        'significado':
            "6, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: ser decisivo y poner cariño a lo que haga.",
      },
      {
        'numero': 7,
        'significado':
            "7, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: poner mucho empeño en todo lo que haga.",
      },
      {
        'numero': 8,
        'significado':
            "8, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: ser muy paciente, saber esperar.",
      },
      {
        'numero': 9,
        'significado':
            "9, lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: ser generosa y genial, de preferencia trabajar independientemente.",
      }
    ];
    return tabletonica[k - 1]['significado'];
  }
}
