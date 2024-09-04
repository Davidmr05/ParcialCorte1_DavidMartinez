grammar Trig;

prog:   expr+ ;    // Un programa es una secuencia de expresiones

expr:   FUNC '(' NUMBER ')' NEWLINE  # trigFunc
    ;

FUNC:   'Sin' | 'Cos' | 'Tan';      // Definimos las funciones permitidas
NUMBER: [0-9]+ ('.' [0-9]+)? ;      // Definimos números (pueden ser enteros o decimales)
NEWLINE: [\r\n]+ ;                  // Nueva línea (para separar las expresiones)
WS:     [ \t]+ -> skip ;            // Espacios en blanco ignorados