%%
LETTER = [A-Za-z_]
DIGIT = [0-9]
%%
"if" { return new Token(Token.IF, "if", pos); }
"<"  { return new Token(Token.LT, "<", pos); }
"<=" { return new Token(Token.LT, "<=", pos); }
"=" { return new Token(Token.EQ, "=", pos); }
"<>" { return new Token(Token.NE, "<>", pos); }
">" { return new Token(Token.GT, ">", pos); }
">=" { return new Token(Token.GE, ">=", pos); }
{LETTER}({LETTER}|{DIGIT})*
     { return new Token(Token.ID, "itsSpelling", pos); }