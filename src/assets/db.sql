DROP TABLE IF EXISTS user;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_name VARCHAR(50),
    user_user VARCHAR(50),
    user_pass VARCHAR(200),
    user_photo VARCHAR(100) DEFAULT 'default.png',
    user_last VARCHAR(50),
    user_created VARCHAR(50)
) ENGINE INNODB;

INSERT INTO
    users
VALUES
    (
        1,
        'Administrador',
        'admin',
        'admin',
        'default.png',
        '2023-01-01 00:00:00',
        '2023-01-01 00:00:00'
    );

DROP TABLE IF EXISTS survey;

CREATE TABLE survey (
    survey_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    survey_question TEXT,
    survey_answer TEXT,
    survey_image VARCHAR(50),
    survey_last VARCHAR(50),
    survey_created VARCHAR(50)
) ENGINE INNODB;

INSERT INTO
    survey (survey_question, survey_answer, survey_image)
VALUES
    (
        'Un letrero en forma de diamante indica lo siguiente:',
        'Peligro',
        ''
    ),
    (
        'Debe conceder el derecho de paso a un vehículo que se aproxima cuando usted:',
        'Vire a la izquierda',
        ''
    ),
    (
        'Esta virando hacia la izquierda, de una calle de doble sentido a una de sentido único, al completar el viraje su auto debe hallarse:',
        'En el carril derecho',
        ''
    ),
    (
        'Un letrero triangular rojo y blanco en una intersección significa lo siguiente:',
        'Detenerse siempre en la intercesión',
        ''
    ),
    (
        'Si un tren que se aproxima se encuentra suficientemente cerca como para representar un peligro, debe hacer lo siguiente:',
        'No cruzar las vías hasta que el tren pase en su totalidad',
        ''
    ),
    (
        'Cuando desee virar a la derecha, su auto debe estar:',
        'Cerca del lado derecho de la calle',
        ''
    ),
    (
        'Un letrero de “No estacionar” en un lugar determinado implica lo siguiente:',
        'Se puede detener el vehículo temporalmente para recoger o dejar pasajeros',
        ''
    ),
    (
        'Acaba de dejar atrás una autovía y está ingresando en una autopista convencional. Debe hacer lo siguiente:',
        'Verificar el velocímetro y mantener el límite mínimo de velocidad. ',
        ''
    ),
    (
        '¿Qué efectos tiene el alcohol en sus aptitudes de manejo y su capacidad de evaluación?',
        'Afecta las aptitudes de manejo y la capacidad de evaluación',
        ''
    ),
    (
        'Nunca se puede estacionar',
        'En una senda peatonal',
        ''
    ),
    (
        '¿Cuáles de los siguientes elementos se utilizan en algunas autopistas a fin de dirigir a los conductores hacia los carriles correctos para virar?',
        'Flechas blancas en el centro de los carriles',
        ''
    ),
    (
        'La mano y el brazo izquierdo de un conductor de encuentran extendidos hacia arriba, esta señal manual indica lo siguiente:',
        'Virar a la derecha',
        ''
    ),
    (
        'El auto que viene detrás del suyo comienza a rebasarlo, debe hacer lo siguiente:',
        'Reducir la velocidad, levemente y permanecer en su carril',
        ''
    ),
    (
        '¿Qué sucede cuando un autobús escolar se encuentra detenido y sus luces rojas parpadean? ',
        'No se puede pasar mientras las luces parpadeen  ',
        ''
    ),
    (
        'Poner en peligro a otras personas en una autopista en circunstancias de agresividad al volante:  ',
        'Se considera un delito grave punible con multas o encarcelamiento  ',
        ''
    ),
    (
        'La concentración de alcohol en sangre (cas) depende de los siguientes factores, a excepción de uno, ¿Cuál? ',
        'La aptitud física ',
        ''
    ),
    (
        'El ataque a alguien en circunstancias de agresividad al volante: ',
        'Se castiga como un delito  ',
        ''
    ),
    (
        'Llega a una intersección bloqueada por el tránsito, debe hacer lo siguiente:  ',
        'Permanecer apartado de la intersección hasta poder pasar',
        ''
    ),
    (
        'El manejo de un vehículo después de consumir alcohol: ',
        'Se considera una falta de seguridad grave  ',
        ''
    ),
    (
        'La mano y el brazo izquierdos de un conductor se encuentran extendidos hacia abajo , esta señal manual indica que va a hacer lo siguiente:  ',
        'Detener en vehículo  ',
        ''
    ),
    (
        '¿Qué vehículos deben detenerse en los cruces de ferrocarriles? ',
        'Autobuses escolares y de transporte de pasajeros  ',
        ''
    ),
    (
        '¿Qué tiene prioridad en orden de acatamiento? ',
        'Un policía  ',
        ''
    ),
    (
        '¿Qué colores y otros elementos caracterizan a los letreros de advertencia que indica peligros adelante, como curvas o puentes angostos? ',
        'Letras o símbolos negros sobre un fondo amarillo ',
        ''
    ),
    (
        '¿Cuál es el efecto combinado del alcohol y de los medicamentos recetados o de venta libre? ',
        'La combinación podría potenciar los efectos del alcohol  ',
        ''
    ),
    (
        'Una manera práctica de evitar un choque en una zona de trabajo consiste en lo siguiente:  ',
        'Mantener una distancia segura respecto del vehículo que se encuentra adelante  ',
        ''
    ),
    (
        '¿Qué diferencia existe entre manejar un vehículo en una autovía y una calle común? ',
        'Manejar el vehículo con mayor eficiencia  ',
        ''
    ),
    (
        'Una multa por exceso de velocidad en una zona de trabajo:  ',
        'Se duplicara si se declara la culpabilidad  ',
        ''
    ),
    (
        'Cuando desea rebasar potro vehículo, debe hacer lo siguiente:  ',
        'Emitir una señal y rebasarlo cuando resulte seguro ',
        ''
    ),
    (
        'La señal de transito que se muestra indica lo siguiente:  ',
        'Hospital adelante y a la derecha   ',
        '1.png'
    ),
    (
        'La diferencia entra un ciclista y un automovilista recae en que el primero no debe hacer lo siguiente:  ',
        'Asegurar su vehículo  ',
        ''
    ),
    (
        'Una velocidad segura para circular:  ',
        'Depende del clima y de las condiciones de la carretera ',
        ''
    ),
    (
        '¿Qué colores y otros elementos caracterizan a un letrero en el que se indica la distancia hasta la siguiente salida en una autopista? ',
        'Verde y letras blancas  ',
        ''
    ),
    (
        'Desea retroceder para salir de su vía de acceso. Observa que hay niños jugando cerca, antes de poner el vehículo en movimiento, debe hacer lo siguiente:  ',
        'Caminar hasta la parte trasera del auto para asegurarse que el camino este despeado  ',
        ''
    ),
    (
        'La mayoría de los choques de trabajo  ',
        'Se producen en la parte posterior de los vehículos ',
        ''
    ),
    (
        'Se desplaza por el carril intermedio de una autovía de tres carriles, un auto comienza a rebasarlo por el lado derecho, la acción  de este conductor es la siguiente:  ',
        'Incorrecta por que elige el punto siego del vehículo que desea rebasar   ',
        ''
    ),
    (
        'Un conductor podrá estacionar su vehículo en un espacio reservado para discapacitados, cuando en él se exhiba una matrícula para discapacitados  ',
        'Si en el registro figura en nombre de discapacitado ',
        ''
    ),
    (
        'Se encuentra esperando en una intersección para virar a la izquierda, debe hacer lo siguiente  ',
        'Activar la señal y no accionar a la dirección hasta la izquierda   ',
        ''
    ),
    (
        'Llega a una intersección en la que hay una luz roja intermitente, debe hacer lo siguiente: ',
        'Detener en vehículo por completo y continuar avanzando cuando sea seguro ',
        ''
    ),
    (
        'Un letrero de no detenerse implica que, a menos que lo indique un policía, ¿puede detenerse únicamente? ',
        'Para evitar interferir en la circulación de otros vehículos                                                                                                                                                        ',
        ''
    ),
    (
        'Manejar un vehículo de noche es peligroso porque:  ',
        'El alcance de la vista es reducido',
        ''
    ),
    (
        'De qué manera se compara el contenido de alcohol en las siguientes bebidas: 12 oz 350ml de cerveza (5%de alcohol) 12 oz 350ml de refresco a base de vino (5%de alcohol); 112 oz (45ml)de licor  (40 % de alcohol) y 5oz ( 145ml) de vino 12% de alcohol.',
        'El licor tiene mayor contenido de alcohol',
        ''
    ),
    (
        'Al circular de noche, puede reducir el resplandor de los faros de los autos que circulan en sentido contrario  ',
        'Dirigiendo la vista hacia el lado inferior derecho de su carril  ',
        ''
    ),
    (
        'En una carretera del estado de nueva york  en la que no se indican límites de velocidad, la máxima velocidad de circulación según lo establece la ley es:  ',
        '55 mpb (88km/h) ',
        ''
    ),
    (
        'En cuales de las siguientes situaciones siempre está prohibido rebasar a otros vehículos  ',
        'El conductor del vehículo que se encuentra delante se detiene para ceder el paso a un peatón en una senda peatonal  ',
        ''
    ),
    (
        'Su auto comienza a patinar en una carretera resbaladiza, debe hacer lo siguiente: ',
        'Ir a la dirección que desee  ',
        ''
    ),
    (
        'En este estado que concentración de alcohol en la sangre (cas) se considera evidencia de intoxicación  ',
        '0.08% ',
        ''
    ),
    (
        'El consumo de café después de consumir alcohol  ',
        'No tiene efectos en la concentración de alcohol en la sangre  ',
        ''
    ),
    (
        'Que efecto podría tener el alcohol al combinarse con otras sustancias ',
        'Potenciar los efectos de ambas por separado ',
        ''
    ),
    (
        'La señal de transito que muestra indica lo siguiente:',
        'Fin del carril derecho permanecer a la izquierda',
        '2.png'
    ),
    (
        'La señal de transito que se muestra se utiliza para evitar lo siguiente:',
        'El ingreso incorrecto en calles de sentido único y rampas de autovías',
        '3.png'
    ),
    (
        'La señal de transito que se muestra es una advertencia de que se acerca a lo siguiente:',
        'Un cruce de ferrocarril',
        '4.png'
    ),
    (
        'La señal de transito que muestra indica lo siguiente:',
        'No virar a la izquierda',
        '5.png'
    ),
    (
        'La señal de transito que muestra indica lo siguiente:',
        'No realizar giros en u',
        '6.png'
    ),
    (
        'La señal de transito que muestra indica lo siguiente:',
        'Tránsito en doble sentido',
        '7.png'
    ),
    (
        'De qué manera se compara el contenido de alcohol de las siguientes bebidas? 12oz (350 ml) de cerveza (5% de alcohol): 12 oz (350ml) de refresco a base de vino (5% de alcohol): 1 ½ oz(45% de alcohol) y 5oz (145 ml) de vino (12% de alcohol).',
        'El licor tiene mayor contenido de alcohol',
        ''
    ),
    (
        'Cuando la carretera está marcada con una línea amarilla continua y una línea amarilla entrecortada de su lado, puede pasar: ',
        'Si el transito está despejado ',
        ''
    ),
    (
        '¿Qué sustancias aparte del alcohol pueden tener un efecto adverso en las aptitudes de manejo? ',
        'Todas las opciones ',
        ''
    ),
    (
        'Si su vehículo se encuentra estacionado en sentido paralelo respecto del bordillo, podrá salir de este por el lado del tránsito: ',
        'Cuando, al hacerlo no interfiera con vehículos que circulen en sentido contrario ',
        ''
    ),
    (
        '¿Cuál es la única manera eficaz de reducir la concentración de alcohol en sangre (cas)? ',
        'Dar al cuerpo el tiempo necesario para eliminar el alcohol.',
        ''
    ),
    (
        'Un automovilista debe saber si ingresa en una zona de trabajo por la presencia de lo siguiente: ',
        'A,B,C. (A: Letreros de zona de color naranja y forma de diamante B: UN encargado de salida C: Un letrero con un panel intermitente con forma de flecha) ',
        ''
    ),
    (
        'Desea virar a la derecha en la siguiente intersección. Debe activar el intermitente que corresponde: ',
        'Al menos 1oo pies (30 metros) del punto de viraje ',
        ''
    ),
    (
        '¿Qué colores y otros elementos caracterizan a un letrero en el que se indica la distancia hasta la siguiente salida en una autopista?  ',
        'Vede y letras blancas ',
        ''
    ),
    (
        'Las señales de velocidad mínima están diseñadas para lo siguiente: ',
        'Propiciar la correcta circulación vehicular. ',
        ''
    ),
    (
        'Antes de retirar el vehiculo de un espacio de estacionamiento paralelo al bordillo, debe hacer lo siguiente. ',
        'Girando la cabeza ',
        ''
    ),
    (
        '¿Cuál es la imagen del emblema “vehículo lento”? ',
        'Un letrero triangular naranja. ',
        ''
    ),
    (
        'La agresividad al volante tiene uno de los siguientes efectos en el conductor: ',
        'Aumenta las posibilidades de sufrir un accidente de transito ',
        ''
    ),
    (
        'Cuando dos vehículos ingresan en una intersección desde diferentes autopistas al mismo tiempo, ¿Qué vehículo debe conceder el derecho de paso?  ',
        'El que està a la izquierda. ',
        ''
    ),
    (
        'Cuando intente detenerse en una carretera resbaladiza la medida más recomendad es la siguiente:  ',
        'Aplicar un cambio a una marcha inferior sin utilizar los frenos. ',
        ''
    ),
    (
        '¿Qué indica la luz amarilla intermitente? ',
        'Avanzar con precaución  ',
        ''
    ),
    (
        'Si no logra tomar la salida que corresponde en una autovía, debe hacer lo siguiente: ',
        'Continuar hasta la salida siguiente y abandonar la autovía.  ',
        ''
    ),
    (
        'Cuando desea rebasar otro vehículo debe hacer lo siguiente:  ',
        'Emitir una señal y rebasarlo cuando resulte ',
        ''
    ),
    (
        'Un letrero de “no detenerse” en un lugar determinado implica lo siguiente: ',
        'No se puede detener el vehículo nunca.  ',
        ''
    ),
    (
        'Según lo establece la ley; al cruzar la calle, una persona ciega tiene derecho de paso cuando: ',
        'Dispone de un perro lazarillo o de un bastón blanco o metálico.  ',
        ''
    ),
    (
        'Está ingresando en una autopista con un carril de acceso muy corto. La manera más segura de incorporarse al tránsito será la siguiente: ',
        'Esperar hasta que se haga un espacio grande en el transito y acelerar rápido. ',
        ''
    ),
    (
        '¿Cuáles son las consecuencias para quienes manejan un vehículo cuando ha estado consumiendo alcohol u otras sustancias?  ',
        'Todas las opciones. ',
        ''
    ),
    (
        'Si el transito le impide cruzar un conjunto de vías, puede proceder solo si sucede lo siguiente:  ',
        'no hay trenes a la vista   ',
        ''
    ),
    (
        'Una línea blanca continua en el borde derecho de la autopista se cierra hacia su izquierda. Esto indica lo siguiente: ',
        'El camino se volverá más angosto. ',
        ''
    ),
    (
        'Los cinturones de seguridad pueden brindar la mayor eficacia para evitar lesiones cuando los utilizan las siguientes personas:',
        'Los pasajeros y el conductor, independientemente del lugar que ocupen en el auto.',
        ''
    ),
    (
        'Se puede evitar fomentar situaciones de agresividad al volante:',
        'Todas las opciones anteriores',
        ''
    ),
    (
        'La mayoría de los choques en zonas de trabajo:',
        'Se producen en la parte posterior de los vehiculos',
        ''
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Fin del carril derecho permanecer a la izquierda',
        '8.png'
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Resbaladizo al mojarse',
        '9.png'
    ),
    (
        'El cruce de una única línea blanca continua en la carretera: ',
        'Está permitido si lo demandan las condiciones del transito ',
        ''
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Mantenerse ala derecha',
        '10.png'
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Transito convergente a la derecha',
        '11.png'
    ),
    (
        'Una velocidad segura para circular: ',
        'Depende del clima y de las condiciones de la carretera. ',
        ''
    ),
    (
        'Desea virar a la derecha en la siguiente intersección. Debe activar el intermitente que corresponde: ',
        'AL menos 100 pies (30 metros) antes del punto de viraje ',
        ''
    ),
    (
        'En una calle sin veredas. Los peatones deben caminar ',
        'Por un costado de la calle y en sentido opuesto al de la circulación vehicular.  ',
        ''
    ),
    (
        '¿Qué debe hacer al ingresar en una calzada desde un camión privado?  ',
        'Cede el derecho de paso a los peatones y a los vehículos que circulen por la calzada ',
        ''
    ),
    (
        'Un letrero rectangular indica lo siguiente: ',
        'Limite de velocidad ',
        ''
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Pendiente adelante.',
        '12.png'
    ),
    (
        'Cuando ud se acerca a una intersección, la luz del semáforo cambia de verde a amarilla. La mejor acción sería la siguiente: ',
        'Estar preparado para detener el vehículo antes de la intersección.  ',
        ''
    ),
    (
        'Tiene derecho de paso cuando: ',
        'Circule por una rotonda ',
        ''
    ),
    (
        'Cuando las ruedas del lado derecho entran en contacto con un arcén blando ¿Cuál es la mejor manera de que toque nuevamente la autopista? ',
        'Soltar el acelerador y aplicar los frenos suavemente. ',
        ''
    ),
    (
        '¿Cuál de los siguientes enunciados es verdadero? Los conductores que se encuentren bajo los efectos del alcohol:  ',
        'Incurren en una falta según las normas de la policía  ',
        ''
    ),
    (
        'Al aproximarse a un ciclista, un automovilista debe hacer lo siguiente: ',
        'Extremar las medidas de precaución.   ',
        ''
    ),
    (
        'Considerando que la calle se encuentra nivelad, ¿Qué debe hacer después de estaciones el vehículo en sentido paralelo en un espacio entre dos autos? ',
        'Enderezar las ruedas delanteras y dejar espacio entre los autos. ',
        ''
    ),
    (
        '¿Qué medida se aplica en el caso de la licencia de un conductor que se niega a someterse a una prueba de alcoholemia (aliento o sangre)? ',
        'Se sustraerá la licencia  ',
        ''
    ),
    (
        'Si no se ven trabajadores en una zona de trabajo: ',
        'Deben acatarse las señales existentes de todas formas ',
        ''
    ),
    (
        'Circula por una calle una sirena. No tiene posibilidades de ver de inmediato el vehiculo de emergencias. Debe hacer lo siguiente: ',
        'Detener su vehículo contra el bordillo y ver si el vehículo de emergencias se encuentra en su calle.  ',
        ''
    ),
    (
        '¿Cuál de las situaciones no tiene lugar después de consumir alcohol? ',
        'La persona se calma y esto le permite concentrarse ',
        ''
    ),
    (
        'Si el pedal de freno se hunde repentinamente hasta el piso, lo primero que debe hacer es lo siguiente: ',
        'Intentar bombearlo para que se acumule presión. ',
        ''
    ),
    (
        'En un cruce de ferrocarril rodear una barrera baja o pasar por debajo de ella: ',
        'No está permitido en ningún caso ',
        ''
    ),
    (
        'Una multa por exceso de velocidad en una zona de trabajo: ',
        'Se duplicará, si se declara la culpabilidad ',
        ''
    ),
    (
        '¿Qué significa la señal de transito que se muestra?',
        'Detener el vehiculo por completo y continuar avanzando cuando, sea seguro.',
        '13.png'
    ),
    (
        '¿De qué manera la agresividad al volante afecta las aptitudes de manejo y la capacidad de evaluación?  ',
        'Afecta las aptitudes de manejo y la capacidad de evaluación.  ',
        ''
    ),
    (
        'Desea Virar a la derecha en la siguiente intersección. Debe activar el intermitente que corresponde: ',
        'Al menos 100 pies (30 metros) antes de punto de viraje. ',
        ''
    ),
    (
        'Al circular con neblina densa durante el día, debe hacerlo con lo siguiente: ',
        'Las luces bajas ',
        ''
    ),
    (
        'En general, debe rebasar vehículos que circulan en la misma dirección: ',
        'Por el lado izquierdo ',
        ''
    ),
    (
        'En una intersección hay un letrero de detención y una senda peatonal, pero no hay línea de detención. Debe detenerse. ',
        'Antes de la senda peatonal  ',
        ''
    ),
    (
        'Puede rebasar a otro vehículo por el lado derecho si el conductor de esta espera para hacer lo siguiente: ',
        'Virar a la izquierda ',
        ''
    ),
    (
        'Si su vehículo se encuentra estacionado en sentido paralelo, respecto al bordillo, podrá salir de este por el lado del tránsito: ',
        'Cuando al hacerlos, no interfiera con vehículos que circulan en sentido contrario. ',
        ''
    ),
    (
        '¿Cuánto tiempo en promedio demora el cuerpo humano en eliminar el alcohol que contiene 12 oz (30ml) de cerveza? ',
        'Una hora ',
        ''
    ),
    (
        'Cunado dos vehículos ingresan a una intersección desde diferentes autopistas al mismo tiempo, ¿Qué vehículo debe conceder el derecho del paso? ',
        'El que está a la izquierda  ',
        ''
    ),
    (
        'Una de las reglas de manejo defensivo es la siguiente: ',
        'Mire hacia delante a la circular ',
        ''
    ),
    (
        '¿Cuál de los siguientes enunciados acerca de la concentración de alcohol en la sangre (cas) es/son verdaderos/s? la  cas indica el porcentaje de alcohol en la sangre ',
        'Las tres opciones ',
        ''
    ),
    (
        'Cuando esta activas las flechas verdes y la luz roja de un semáforo: ',
        'Solo se puede circula en el sentido que indica flecha verde  ',
        ''
    ),
    (
        'La agresividad al volante tiene uno de los siguientes efectos en el conductor: ',
        'Aumenta las posibilidades de sufrir un accidente de transito ',
        ''
    ),
    (
        '¿De que manera el alcohol  afecta las aptitudes de manejos y la capacidad de evaluación? ',
        'Afecta las aptitudes de manejos y la capacidad de evaluación. ',
        ''
    ),
    (
        'La señal de transito que se muestra significa lo siguiente:',
        'Cruce escolar adelante',
        '14.png'
    ),
    (
        'Los automovilistas deben saber que, por la noche, todas las bicicletas que circules debe llevar lo siguiente:  ',
        'Un faro y una luz trasera roja. ',
        ''
    ),
    (
        'Nunca se puede estacionar: ',
        'En una senda peatonal. ',
        ''
    ),
    (
        'Un conductor podrá estacionar su vehículo en un espacio reservado para discapacitados cuando en el se exhiba una matrícula para discapacitados: ',
        'Si en el registro figura el nombre del discapacitado  ',
        ''
    ),
    (
        'El cruce de una línea amarilla doble continua: ',
        'Esta permitido para dirigirse a una vía de acceso. ',
        ''
    ),
    (
        'El cruce de una línea amarilla doble continua: ',
        'Esta permitido para dirigirse a una vía de acceso. ',
        ''
    ),
    (
        '¿Cuál de los siguientes enunciados acerca de la concentración de alcohol en la sangre (cas) es verdadero?  ',
        'Es necesaria una prueba de alcoholemia para imputar una infracción por consumo de alcohol. ',
        ''
    ),
    (
        'Las autovías cuentas con ¨Carriles de acceso a autovía¨ (Carriles de aceleración) para que los conductores puedan hacer lo siguiente: ',
        'Alcanzar la velocidad correcta antes de incorporarse al flujo vehicular. ',
        ''
    ),
    (
        '¿Cuál de los siguientes factores tienes influencia en los efectos de alcohol? ',
        'Todas las opciones ',
        ''
    ),
    (
        'Un letrero de "No detenerse" en un lugar determinado implica lo siguiente: ',
        'Se puede detener el vehículo, temporalmente, para recoger o dejar pasajeros. ',
        ''
    ),
    (
        '¿Qué acción corresponder al aproximarse a un cruce de ferrocarril sin señales (por ejemplos Luces, o barreras)  ',
        'Reducir la velocidad y prepararse para detener el vehículo. ',
        ''
    ),
    (
        'Un auto villista debe saber si ingresa en una zona de trabajo por la presencia de lo siguiente: ',
        'A,B Y D  ',
        ''
    ),
    (
        'La señal de transito que se muestre significa lo siguiente:  ',
        'Fin de autopista dividida  ',
        ''
    ),
    (
        'No se puede Cruzar una única línea blanca (o amarilla) entrecortada:',
        'Cuando, al hacerlo, se interfiera con el tránsito.',
        '15.png'
    ),
    (
        'Un automovilista debe saber que, en una calzada, un ciclista debe hacer lo siguiente: ',
        'Desplazarse por el extremo derecho de la carretera  ',
        ''
    ),
    (
        '¿Qué efecto podría tener el alcohol y otras sustancias al combinarse en la sangre? ',
        'Potenciar los efectos de ambas por separado.  ',
        ''
    ),
    (
        'Si un neumático estalla, lo correcto es hacer lo siguiente: ',
        'Sostener el volante con firmeza y reducir la velocidad ',
        ''
    ),
    (
        'Manejar un vehículo de noche es peligroso porque:  ',
        'El alcance de la vista es reducido  ',
        ''
    ),
    (
        'Después de rebasar un auto, debe regresar al carril derecho una vez que haga lo siguiente: ',
        'Vea el parachoques delantero del otro auto en su espejo.  ',
        ''
    ),
    (
        '¿Cuál de las siguientes indicaciones se aplica a cualquier situación de emergencia al circular? ',
        'Su primera reacción es la mejor.  ',
        ''
    );