package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
A = (a)
B = (b)
W = [a-z]+
%{
	public String lexeme;
%}
%%
^{A}{W}{A} |
^{B}{W}{B} {lexeme=yytext(); return Identificador;}
 . {return ERROR;}