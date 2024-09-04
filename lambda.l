%{
#include <stdio.h>
int lambda_flag = 0;
%}

%%

"lambda"                { lambda_flag = 1; }   // Detecta la palabra clave lambda
[a-zA-Z_][a-zA-Z0-9_]*  { if (lambda_flag) printf("Parametro: %s\n", yytext); }
":"                     { if (lambda_flag) lambda_flag = 2; }
[ ]+                    { /* Ignora espacios */ }
"\*\*"                  { if (lambda_flag == 2) printf("Operacion potencia detectada: **\n"); }
"="                     { printf("Asignación detectada: %s\n", yytext); }
"print"                 { printf("Print detectado: %s\n", yytext); }
"("                     { printf("Paréntesis abierto\n"); }
")"                     { printf("Paréntesis cerrado\n"); }

.                       { /* Ignora el resto */ }

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *archivo = fopen(argv[1], "r");
        if (!archivo) {
            printf("No se pudo abrir el archivo %s\n", argv[1]);
            return 1;
        }
        yyin = archivo;
        yylex();
        fclose(archivo);
        if (lambda_flag == 2) {
            printf("ACEPTA\n");
        } else {
            printf("NO ACEPTA\n");
        }
    } else {
        printf("Por favor, proporcione un archivo de entrada\n");
    }
    return 0;
}