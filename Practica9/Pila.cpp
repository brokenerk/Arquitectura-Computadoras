#include <time.h>
#include <bitset>
#include <math.h>
#include <iostream>
using namespace std;

class Pila {
	private:
		int PC[8];
		int stackPointer;
		int PCout;
	public:
		Pila();
		void set();
		void get();
		void operacion(int clr, int WPC, int UP, int DW, int PCin);
		void operacion();
};

Pila::Pila() { }

void Pila::set() {
	for(int i = 0; i < 8; i++)
		PC[i] = rand() % 65535;
	stackPointer = 0;
}

void Pila::get() {
    for (int i = 0; i < 8; i++)
    	cout << bitset<16>(PC[i]) << endl;
}

void Pila::operacion() {
	PCout = PC[stackPointer];
	cout << "SP: " << stackPointer << endl;
	cout << "PCout: " << bitset<16>(PCout) << endl;
}

void Pila::operacion(int clr, int WPC, int UP, int DW, int PCin) {
	if (clr == 1) {
		// Reset
		stackPointer = 0;
		fill(PC, PC + 8, 0); 
	}
	else if (clr == 0 && WPC == 0 && UP == 0 && DW == 0) {
		// Otras instrucciones
		stackPointer = stackPointer;
		PC[stackPointer]++;
	}
	else if (clr == 0 && WPC == 1 && UP == 0 && DW == 0) {
		// Saltos B, BNEI, BEQI, etc
		if (PCin > 65535)
			cout << "PC[SP] desbordado" << endl;
		else {
			stackPointer = stackPointer;
			PC[stackPointer] = PCin; 
		}
	}
	else if (clr == 0 && WPC == 1 && UP == 1 && DW == 0) {
		// Llamadas subrutinas CALL
		if (PCin > 65535)
			cout << "PC[SP] desbordado" << endl;
		else {
			stackPointer++;
			if (stackPointer == 8)
				stackPointer = 0;
			PC[stackPointer] = PCin;
		}
	}
	else if (clr == 0 && WPC == 0 && UP == 0 && DW == 1) {
		// Retornos RET
		stackPointer--;
		if (stackPointer == -1)
			stackPointer = 7;
		PC[stackPointer]++; 
	}
	else
		operacion(); // PCout
}

int main() {
	srand(time(NULL));
	Pila p;

	//Set
	cout << "\nSet()" << endl;
	p.set();
	p.get();

	//Reset
	cout << "\nReset()" << endl;
	p.operacion(1, 0, 0, 0, 0);
	p.get();

	cout << "\n1. LI R6, #87" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n2. LI R8, #90" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n3. B 34" << endl;
	p.operacion(0, 1, 0, 0, 34);
	p.operacion();

	cout << "\n4. ADD R8, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n5. SUB R1, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n6. CALL 0x61" << endl;
	p.operacion(0, 1, 1, 0, 0x61);
	p.operacion();

	cout << "\n7. LI R6, #87" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n8. LI R8, #90" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n9. CALL 100" << endl;
	p.operacion(0, 1, 1, 0, 100);
	p.operacion();

	cout << "\n10. ADD R8, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n11. SUB R1, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n12. LI R6, #87" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n13. RET" << endl;
	p.operacion(0, 0, 0, 1, 0);
	p.operacion();

	cout << "\n14. SUB R1, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n15. LI R6, #87" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n16. RET" << endl;
	p.operacion(0, 0, 0, 1, 0);
	p.operacion();

	cout << "\n17. B 300" << endl;
	p.operacion(0, 1, 0, 0, 300);
	p.operacion();

	cout << "\n18. CALL 889" << endl;
	p.operacion(0, 1, 1, 0, 889);
	p.operacion();

	cout << "\n19. ADD R8, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n20. SUB R1, R2, R3" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n21. LI R6, #87" << endl;
	p.operacion(0, 0, 0, 0, 0);
	p.operacion();

	cout << "\n22. RET" << endl;
	p.operacion(0, 0, 0, 1, 0);
	p.operacion();

	cout << "\n23. RET" << endl;
	p.operacion(0, 0, 0, 1, 0);
	p.operacion();

	cout << "\nGet()" << endl;
	p.get();
	
	cout << endl;
	return 0; 
}