#include <cstdlib>
#include <time.h>
#include <cstring>
#include <bitset>
#include <iostream>
using namespace std;

class ArchivoRegistros {
	private:
		int read_data1;
		int read_data2;
		int banco[16];
	public:
		ArchivoRegistros();
		void set();
		void get();
		void operacionSincrona(int write_data, int write_reg, int read_reg1, int shamt, int clr, int wr, int she, int dir);
		void operacionAsincrona(int clr);
		void operacionAsincrona(int clr, int read_reg1, int read_reg2);
};

ArchivoRegistros::ArchivoRegistros() { }

void ArchivoRegistros::set() {
	for(int i = 0; i < 16; i++) {
		banco[i] = rand() % 65535;
	}
}

void ArchivoRegistros::get() {
    for (int i = 0; i < 16; i++) {
    	cout << bitset<16>(banco[i]) << endl;
    }
}

// Reset, Banco[0,1, ... , 15] = 0
void ArchivoRegistros::operacionAsincrona(int clr) {
	if (clr == 1) {
		fill(banco, banco + 16, 0);
	}
}

// readData1 = Banco[read_reg1]	
// readData2 = Banco[read_reg2]
void ArchivoRegistros::operacionAsincrona(int clr, int read_reg1, int read_reg2) {
	cout << "Read_Data1: ";
	read_data1 = banco[read_reg1];
	cout << bitset<16>(read_data1) << endl;

	cout << "Read_Data2: ";
	read_data2 = banco[read_reg2];
	cout << bitset<16>(read_data2) << endl;
}

void ArchivoRegistros::operacionSincrona(int write_data, int write_reg, int read_reg1, int shamt, int clr, int wr, int she, int dir) {
	if (clr == 1) {
		// Reset, Banco[0,1, ... , 15] = 0
		operacionAsincrona(clr); 
	}
	else if (clr == 0 && wr == 0 && she == 0 && dir == 0) {
		// Banco = Banco
		memcpy(banco, banco, 16); 
	}
	else if (clr == 0 && wr == 1 && she == 0) {
		// Banco[write_reg] = write_data
		banco[write_reg] = write_data; 
	}
	else if (clr == 0 && wr == 1 && she == 1 && dir == 0) {
		// Banco[write_reg] = Banco[read_reg1] >> shamt
		banco[write_reg] = banco[read_reg1] >> shamt; 
	}
	else if (clr == 0 && wr == 1 && she == 1 && dir == 1) {
		// Banco[write_reg] = Banco[read_reg1] << shamt
		banco[write_reg] = banco[read_reg1] << shamt; 
	}
	else {
		cout << "Combinacion de parametros incorrecta" << endl;
	}	
}

int main() {
	srand(time(NULL));
	ArchivoRegistros ar;

	cout << "\n1. Reset" << endl;
	ar.operacionAsincrona(1); // Reset
	ar.get();

	cout << "\n2. Banco[1] = 89" << endl;
	ar.operacionSincrona(0b1011001, 0b1, 0b0, 0b0, 0, 1, 0, 0);
	//ar.operacionSincrona(89, 1, 0, 0, 0, 1, 0, 0);
	//ar.operacionAsincrona(1, 1, 1);

	cout << "\n3. Banco[2] = 72" << endl;
	ar.operacionSincrona(0b1001000, 0b10, 0b0, 0b0, 0, 1, 0, 0);
	//ar.operacionSincrona(72, 2, 0, 0, 0, 1, 0, 0);
	//ar.operacionAsincrona(1, 2, 2);

	cout << "\n4. Banco[3] = 123" << endl;
	ar.operacionSincrona(0b1111011, 0b11, 0b0, 0b0, 0, 1, 0, 0);
	//ar.operacionSincrona(123, 3, 0, 0, 0, 1, 0, 0);
	//ar.operacionAsincrona(1, 3, 3);

	cout << "\n5. Banco[4] = 53" << endl;
	ar.operacionSincrona(0b110101, 0b100, 0b0, 0b0, 0, 1, 0, 0);
	//ar.operacionSincrona(53, 4, 0, 0, 0, 1, 0, 0);
	//ar.operacionAsincrona(1, 4, 4);

	cout << "\n6. Leer Banco[1] y Banco[2]" << endl;
	ar.operacionAsincrona(1, 0b1, 0b10);
	//ar.operacionAsincrona(1, 1, 2)

	cout << "\n7. Leer Banco[3] y Banco[4]" << endl;
	ar.operacionAsincrona(1, 0b11, 0b100);
	//ar.operacionAsincrona(1, 3, 4)

	cout << "\n8. Banco[2] = Banco[1] << 3" << endl;
	ar.operacionSincrona(0b0, 0b10, 0b1, 0b11, 0, 1, 1, 1);
	//ar.operacionSincrona(0, 2, 1, 3, 0, 1, 1, 1);
	//ar.operacionAsincrona(1, 1, 2);

	cout << "\n9. Banco[4] = Banco[3] >> 5" << endl;
	ar.operacionSincrona(0b0, 0b100, 0b11, 0b101, 0, 1, 1, 0);
	//ar.operacionSincrona(0, 4, 3, 5, 0, 1, 1, 0);
	//ar.operacionAsincrona(1, 3, 4);

	cout << "\n10. Leer Banco[1] y Banco[2]" << endl;
	ar.operacionAsincrona(1, 0b1, 0b10);
	//ar.operacionAsincrona(1, 1, 2);

	cout << "\n11. Leer Banco[3] y Banco[4]" << endl;
	ar.operacionAsincrona(1, 0b11, 0b100);
	//ar.operacionAsincrona(1, 3, 4);

	cout << "\n12. Get()" << endl;
	ar.get();

	cout << "\n13. Reset" << endl;
	ar.operacionAsincrona(1); // Reset
	ar.get();
	
	cout << endl;
	return 0; 
}