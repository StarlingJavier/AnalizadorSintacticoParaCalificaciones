package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
sal = [\n]
tab = [\t]
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}
 
 


(sal) {lexeme=yytext(); return Salto;}
(tab) {lexeme=yytext(); return Tabulacion;}
(A|B|C|D|F) {lexeme=yytext(); return Literal;}
([0-9])+((\.)([0-9])+)? {lexeme=yytext(); return Nota;}

  
 

/* Identificador */
{L}({L}|{D})+ {lexeme=yytext(); return Identificador_Var;}



/* Numero */
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}
