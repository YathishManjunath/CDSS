%{
#include <stdio.h>

int cid = 0;
%}

digit [0-9]
letter [a-zA-Z_]
identifier {letter}({letter}|{digit})+
notidentifier ({digit}{letter})+


%%
	   
{identifier}+  { printf("%s is an identifier\n",yytext); cid ++;}

{notidentifier}+ { printf("%s is not an identifier\n",yytext); }
%%

int main()
{
	yyin = fopen("file.txt","r");
	yylex();
	
	printf("The number of identifiers: %d\n",cid);
	return 0;
}

int yywrap()
{
	return 1;
}
