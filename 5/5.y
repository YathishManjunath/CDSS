%{

#include<stdio.h>
int valid=1;

%}

%token digit letter

%%
start : letter s
s :   letter s
      | digit s
      |;
%%

int yyerror()
{
    printf("\nInvalid Variable\n");
    valid=0;

    return 0;
}

int main()
{
    printf("Type the Variable: ");
    yyparse();

    if(valid)
    {
        printf("\nValid Variable\n");
    }
}
