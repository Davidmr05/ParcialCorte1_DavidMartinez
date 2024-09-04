# ParcialCorte1_DavidMartinez

Parcial primer corte - David Esteban Martinez Rios

1. Para ejecutar el archivo de tokens AWK:
2. 
	- ./token.awk token.txt

EN consola se imprime correctamente los tokens del archivo token.txt: 

TOKEN: PLUS ( + )
TOKEN: DOUBLE_PLUS ( ++ )
TOKEN: INTEGER (1234)
TOKEN: FLOAT (68.87)
ERROR: Expresión no reconocida (invalid_token)


2. Se complila el archivo LEX con GCC
3. 
	- flex lambda.l 

	Se crea automaticamente el archivo lex.yy.x y

	- gcc lex.yy.c -o a.out -lfl

	Se crea automaticamente el a.out

	En el archivo .txt se implementa la funcion de python
	y se ejecuta el programa de la siguiente manera:

	- ./a.out lambda.txt --> Para Aceptado
 - 
	- ./a.out lambdano.txt --> Para No Aceptado
	


5. Se complila el archivo .c con gcc
6. 
	- gcc miprograma.c -o miprograma

	Se crea automaticamente el .miprograma

	- se ejecuta el programa incluiyendo el archivo de texto o el parrafo y la palabra clave que en este caso es "carro"
 - 
	- ./miprograma carro.txt carro

La palabra carro se repite 8 veces en el texto. 

4. 
Lenguaje de programacion compilado: C 

Para compilar el archivo suma.c

	- gcc suma.c -o suma
 
	-./suma

	La suma de 1 a 10000000 es: 50000005000000
	Tiempo de ejecución en C: 0.029665 segundos

Lenguaje de programacion interpretado: Python 

Para Ejecutar el archivo suma.py

	- python3 suma.py

	La suma de 1 a 10000000 es: 50000005000000
	Tiempo de ejecución en Python: 0.1265115737915039 segundos


5. 

Se generan las clases correspondientes con: 

	- antlr4 Trig.g4 
 
Se genera automaticamente TrigLexer.java y TrigParser.java

El archivo expr.in contiene la entrada: 
Sin(90)
Cos(0)
Cos(180)
Sin(45)

Se compila: 

	- javac Trig*.java TrigPrueba.java
 
Y se ejecuta eon el archivo de entrada: 

	- java TrigPrueba expr.in

Sin(90): El seno de 90 grados en radianes es 1.

Cos(0): El coseno de 0 grados en radianes es 1.

Cos(180): El coseno de 180 grados en radianes es -1.

Sin(45): El seno de 45 grados en radianes es aproximadamente 0.707, lo cual redondea a 1.
