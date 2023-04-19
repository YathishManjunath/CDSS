%{
#include <stdio.h>
int ni = 0, pi = 0, nf = 0, pf = 0;
%}

%%
([-][0-9]*\.[0-9]*) {printf("Negetive fraction number = %s\n",yytext); nf++;}
([0-9]*.\[0-9]*) {printf("Positive fraction number = %s\n",yytext); pf++;}
([+][0-9]*\.[0-9]*) {printf("Positive fraction number = %s\n",yytext); pf++;}
[-][0-9]+ {printf("Negetive Number = %s\n",yytext); ni++;}
([0-9]*) {printf("Positive Number = %s\n",yytext); pi++;}
([+][0-9]*) {printf("Positive Number = %s\n",yytext); pi++;}

%%

int main()
{
	yyin = fopen("file.txt","r");
	yylex();
	
	printf("The number of negetive numbers: %d\n",ni);
	printf("The number of positive numbers: %d\n",pi);
	printf("The number of negetive fraction numbers: %d\n",nf);
	printf("The number of negetive fraction numbers: %d\n",pf);
	return 0;
}

int yywrap()
{
	return 1;
}
