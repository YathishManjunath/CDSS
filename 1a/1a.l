%{
#include<stdio.h>

int c = 0,w = 0,s = 0,l = 0;

%}

%%


[\n] {l++; c += yyleng;}
[" "\t] {s++; c += yyleng;}
([a-zA-Z0-9])* {w++; c += yyleng;} 
%%


int main()
{
	yyin  = fopen("file.txt","r");
	yylex();
	
	printf("The number of characters: %d\n",c);
	printf("The number of spaces: %d\n",s);
	printf("The number of lines: %d\n",l);
	printf("The number of words: %d\n",w);

	return 0;
}
	
int yywrap()
{
	return 1;
}
