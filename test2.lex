%{
  int lineno;
%}
DIGIT [0-9]
ID    [a-z][a-z0-9]
%%
{DIGIT}+            printf("int: %s\n", yytext);
{DIGIT}+"."{DIGIT}* printf("float: %s\n", yytext);
{ID}                printf("id: %s\n", yytext);
if                  printf("if\n");
else                printf("else\n");
then                printf("then\n");
while               printf("while\n");
for                 printf("for\n");
";"                 printf("semicolon\n");
%%

