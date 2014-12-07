%{
#define YY_NO_UNISTD_H
#include "parser.bison.h"
%}

%%
[0-9]*[02468]"\n" { return EVEN; }
[0-9]*[13579]"\n" { return ODD; }
%%
int main(void)
{
yyparse();
return 0;
}

int yywrap(void)
{
return 0;
}

int yyerror(void)
{
printf("Error\n");
exit(1);
} 