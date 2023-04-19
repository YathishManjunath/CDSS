%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B

%%
Str:S '\n' {return 0;}
S:A S B;|;
%%

int main()
{
	printf("\nType the string: ");
	if (!yyparse())
		printf("\nValid String");
	
	return 0;
}

int yyerror()
{
	printf("\nInvalid String");
	exit(0);
}
