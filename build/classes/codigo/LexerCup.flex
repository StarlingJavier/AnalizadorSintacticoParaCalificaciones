package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
sal = [\n]
tab = [\t]
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}
  
(sal) {return new Symbol(sym.Salto, yychar, yyline, yytext());}
(tab) {return new Symbol(sym.Tabulacion, yychar, yyline, yytext());}
(A|B|C|D|F) {return new Symbol(sym.Literal, yychar, yyline, yytext());}
([D])+((\.)([D])+)? {return new Symbol(sym.Nota, yychar, yyline, yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}

