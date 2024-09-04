#include <stdio.h>
#include <time.h>

int main() {
    long long int suma = 0;
    long long int N = 10000000;  

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    for (long long int i = 1; i <= N; i++) {
        suma += i;
    }

    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

    printf("La suma de 1 a %lld es: %lld\n", N, suma);
    printf("Tiempo de ejecución en C: %f segundos\n", cpu_time_used);

    return 0;
}