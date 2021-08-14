%{
#include<stdio.h>
Int c=0;
%}
%%
{/][/][a-zA-Z0-9 \n\t]* {c++; printf (“ “);}
[/][*][a-zA-Z0-9 \n\t]* [*][/] { c++; printf{“ “);}
%%
main( int argc, char *argv[ ])
{
yyin = fopen(argv[1], “r”);
yyout = fopen(argv[2], “w”);
yylex();
printf(“The number of comment lines = %d”,c);
}
int yywrap()
{
return 1;
}

