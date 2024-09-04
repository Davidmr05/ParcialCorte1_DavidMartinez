import time

N = 10000000  

start = time.time()

suma = sum(range(1, N + 1))

end = time.time()

print(f"La suma de 1 a {N} es: {suma}")
print(f"Tiempo de ejecución en Python: {end - start} segundos")