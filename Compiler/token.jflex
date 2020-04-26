package grammar; 

import java.io.*; 
import java.util.*;
import java_cup.runtime.*; 
import text.*; 

%%

%public 
%type      Symbol 
%char 
 
%{  
    private int lineNumber = 1;  
    public int lineNumber() { return lineNumber; }    


    public Symbol token( int tokenType ) {   
        Print.error().println( "Obtain token " 
            + sym.terminal_name( tokenType ) 
            + " \"" + yytext() + "\"" );   
        return new Symbol( tokenType, yychar, 
            yychar + yytext().length(), yytext() );   
        } 
%}

number  =   [0-9]+ 
ident  =    [A-Za-z][A-Za-z0-9]* 
space  =    [\ \t] 
newline  =  \r|\n|\r\n 

%% 
"="   { return token( sym.ASSIGN ); } 
"+"   { return token( sym.PLUS ); } 
"-"   { return token( sym.MINUS ); } 
"*"   { return token( sym.TIMES ); } 
"/"   { return token( sym.DIVIDE ); } 
"("   { return token( sym.LEFT ); } 
")"   { return token( sym.RIGHT ); } 
"<"   { return token( sym.LT ); } 
"<="   { return token( sym.LE ); } 
">"   { return token( sym.GT ); } 
">="   { return token( sym.GE ); } 
"=="   { return token( sym.EQ ); } 
"!="   { return token( sym.NE ); } 
"if"   { return token( sym.IF ); } 
"then"  { return token( sym.THEN ); } 
"else"  { return token( sym.ELSE ); } 
"while"  { return token( sym.WHILE ); } 
"do"   { return token( sym.DO ); } 
"{"   { return token( sym.LEFTCURLY ); } 
"}"   { return token( sym.RIGHTCURLY ); } 
";"   { return token( sym.SEMICOLON ); } 
{newline}  { lineNumber++; } 
{space}  { } 
 
{number}  { return token( sym.NUMBER ); } 
{ident}  { return token( sym.IDENT ); } 
 
<<EOF>>  { return token( sym.EOF ); } 
 
.   { return token( sym.error ); } 