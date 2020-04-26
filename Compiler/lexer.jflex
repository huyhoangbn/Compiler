import java.io.*; 
import java.util.*;


%%
%class search
%standalone
%line
%column

%%
[A-Za-z][A-Za-z0-9]*  {System.out.printf("*** letter: %s + at line %d, column %d\n",yytext(), yyline, yycolumn);
        }
[0-9]+ {System.out.printf("*** number: %s - (int)  + at line %d, column %d\n",yytext(), yyline, yycolumn);
        }
"=" {System.out.printf("***  token: %s - define:ASSIGN , state: #%d\n", yytext(), yyline);
        }
"+" {System.out.printf("*** token: %s - define:PLUS , state: #%d\n", yytext(), yyline);
        }
"-" {System.out.printf("***  token: %s - define:MINUS  , state: #%d\n", yytext(), yyline);
        }
"*" {System.out.printf("***  token: %s - define:TIMES  , state: #%d\n", yytext(), yyline);
        }
"/" {System.out.printf("***  token: %s - define:DIVIDE  , state: #%d\n", yytext(), yyline);
        }
")" {System.out.printf("***  token: %s - define:LEFT  , state: #%d\n", yytext(), yyline);
        }
"(" {System.out.printf("***  token: %s - define:RIGHT  , state: #%d\n", yytext(), yyline);
        }
"<" {System.out.printf("***  token: %s - define:LT  , state: #%d\n", yytext(), yyline);
        }
"<=" {System.out.printf("***  token: %s - define:LE  , state: #%d\n", yytext(), yyline);
        }
">" {System.out.printf("***  token: %s - define:GT  , state: #%d\n", yytext(), yyline);
        }
">=" {System.out.printf("***  token: %s - define:GE  , state: #%d\n", yytext(), yyline);
        }
"==" {System.out.printf("***  token: %s - define:EQ  , state: #%d\n", yytext(), yyline);
        }
"!=" {System.out.printf("*** token: %s - define:DO  , state: #%d\n", yytext(), yyline);
        }
"{" {System.out.printf("***  token: %s - define:LEFTCURLY  , state: #%d\n", yytext(), yyline);
        }
"}" {System.out.printf("***  token: %s - define:RIGHTCURLY  , state: #%d\n", yytext(), yyline);
        }
";" {System.out.printf("*** token: %s - define:SEMICOLON  , state: #%d\n", yytext(), yyline);
        }

\n {/*Do nothing */}
. {/*Do nothing */}