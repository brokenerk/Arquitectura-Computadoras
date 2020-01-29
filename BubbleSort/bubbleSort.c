//gcc bubbleSort.c -S -o bubble.out
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define n 50

//	Descripción: Genera un arreglo de 50 números
//	Recibe: Nada
//	Devuelve: Un arreglo de números
int* generarArreglo() {
	int *A = (int*)calloc(n, sizeof(int));
	for(int i = 0; i < n; i++)
		A[i] = rand();
	return A;
}

//	Descripción: Ordena un arreglo de números
//	Recibe: El arreglo de números
//	Devuelve: Nada
void burbujaSimple(int A[]) {
	int aux;
	for(int i = 0; i < n; i++) {
		for(int j = 0; j < n - 1 - i; j++) {
			if (A[j] > A[j + 1]) {
				aux = A[j];
				A[j] = A[j + 1];
				A[j + 1] = aux;
			}
		}
	}
}

//	Descripción: Imprime un arreglo de números
//	Recibe: El arreglo de números
//	Devuelve: Nada
void imprimir(int A[]) {
	for(int i = 0; i < n; i++)
		printf("%d\n", A[i]);
}

int main() {
	srand(time(NULL));
	int *arreglo = generarArreglo();
	burbujaSimple(arreglo);
	imprimir(arreglo);
	return 0;
}