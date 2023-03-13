%{
#include <stdio.h>

int sf = 0, pf = 0;
%}

%%
"scanf" {fprintf(yyout,"readf"); sf++; }
"printf" {fprintf(yyout,"writef"); pf++; }
%%

int main()
{
	yyin = fopen("f1.c","r");
	yyout = fopen("f2.c","w");
	
	yylex();
	
	printf("The number of 'scanf' in the file are: %d\n",sf);
	printf("The number of 'printf' in the file are: %d\n",pf);
	return 0;
}

int yywrap()
{
	return 1;
}

