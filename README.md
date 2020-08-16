# AnalisadorSintactico_PPO
Analizador Sintactico Programacion Orientada Objetos


Proyecto del Analizador Sintáctico

-Desarrollado con IDE Gráfico para Interpretar la Sintaxis según su lenguaje de programación.

-Panel izquierdo consiste en un editor del código, cuyo objetivo será permitir la introducción
del código fuente construido según sus reglas sintácticas.

-El analizador sintáctico asume que toda sintaxis válida queda iniciada por la
definición de una clase.

-El Panel Derecho consiste en el Visor de Resultados de la interpretación del código fuente
analizado desde el panel izquierdo.

-Maneja cualquier entrada incorrecta, informando del tipo de error
sintáctico (es decir, cual regla ha sido violada) y la línea de código donde se ha encontrado. 

Reglas de Sintaxis Requeridas:
-Toda definición de código inicia con la palabra reservada clase, seguida de un
identificador que no debe contener ni números ni caracteres especiales (!@#$%^&-_?"{}[]\/).
Lo mismo aplica para la definición de una función.

-El único tipo de dato permitido es int, el cual equivale a un entero.

-La palabra retorna seguida del token -> se usarán siempre que se desee retornar el valor
de tipo entero de una función.

-Se Permiten los siguientes componentes léxicos como operaciones válidas (+,-,*,/, ^, >, >=,
<, <=, ==, !=).

-El nombre de las funciones permitidas, es decir la de suma, resta, multiplicación, división y
potencia, tiene un nombre predefinido, de manera que sea más sencillo identificar
dicha operación como válida dentro de su analizador sintáctico.

-El carácter para iniciar un bloque de clase, una función y un if será {

-El carácter para cerrar un bloque de clase, una función y un if será }

-La única forma de invocar las funciones será en un bloque especial que tendrá el mismo
nombre del identificador de la clase.

-Para provocar la salida de un resultado, siempre se usará la palabra reservada
imprimir seguida del token ->. Se podrá acompañar únicamente de un entero o de una
función que retorne un entero.

-Cualquier función definida podrá recibir un mínimo de cero, y un máximo de 5 parámetros de
tipo entero.

-Toda sentencia que no sea una clase o una función deberá finalizar con un punto y coma.

-Deberá validar que una función invocada con la cantidad incorrecta de parámetros, se trata
de una violación a las reglas sintácticas de su lenguaje.

-El carácter = implica la asignación de un valor a un identificador que cumpla con las reglas
de sintaxis.

-Deberá validar el uso de la palabra reservada if, el cual permitirá evaluar una condición para
comparar valores enteros. 

Ejemplo del formato correcto para esto será:

clase pueba
{ 
int entero = 10 ;

int sumar (int param )
{
retorna -> entero + param;
}

Prueba()
{
imprimir -> sumar(10); 
} 
} 
