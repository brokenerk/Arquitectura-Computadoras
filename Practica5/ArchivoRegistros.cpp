#include <cstdlib>
#include <time.h>
#include <cstring>
#include <bitset>
#include <iostream>
using namespace std;

class ArchivoRegistros {
	private:
		int write_data;
		int write_reg;
		int read_reg1;
		int read_reg2;
		int write_lit;
		int read_data1;
		int read_data2;
		int arreglo[16];
		
	public:
		ArchivoRegistros();
		void set();
		void get();
		void operacionSincrona(int writeData, int writeReg, int readReg1, int shamt, int clr, int wr, int she, int dir);
		void operacionAsincrona(int clr);
		void operacionAsincrona(int clr, int readReg1, int readReg2);
};

ArchivoRegistros::ArchivoRegistros() { }

void ArchivoRegistros::set() {
	for(int i = 0; i < 16; i++) {
		arreglo[i] = rand() % 65536;
	}
}

void ArchivoRegistros::get() {
    for (int i = 0; i < 16; i++) {
    	cout << bitset<16>(arreglo[i]) << endl;
    }
}

// Reset, Banco[0,1, ... , 15] = 0
void ArchivoRegistros::operacionAsincrona(int clr) {
	if (clr == 1) {
		fill(arreglo, arreglo + 16, 0);
	}
}

// readData1 = Banco[readReg1]	
// readData2 = Banco[readReg2]
void ArchivoRegistros::operacionAsincrona(int clr, int readReg1, int readReg2) {
	cout << "Read_Data1: ";
	read_reg1 = readReg1;
	read_data1 = arreglo[read_reg1];
    cout << bitset<16>(read_data1) << endl;

    cout << "Read_Data2: ";
    read_reg2 = readReg2;
	read_data2 = arreglo[read_reg2];
    cout << bitset<16>(read_data2) << endl;;
}

void ArchivoRegistros::operacionSincrona(int writeData, int writeReg, int readReg1, int shamt, int clr, int wr, int she, int dir) {
	if (clr == 1) {
		// Reset, Banco[0,1, ... , 15] = 0
		operacionAsincrona(clr); 
	}
	else if (clr == 0 && wr == 0 && she == 0 && dir == 0) {
		// Banco = Banco
		memcpy(arreglo, arreglo, 16); 
	}
	else if (clr == 0 && wr == 1 && she == 0) {
		// Banco[writeReg] = writeData
		write_data = writeData;
		write_reg = writeReg;
		arreglo[write_reg] = write_data; 
	}
	else if (clr == 0 && wr == 1 && she == 1 && dir == 0) {
		// Banco[writeReg] = Banco[readReg1] >> shamt
		write_reg = writeReg;
		read_reg1 = readReg1;
		write_lit = shamt;
		arreglo[write_reg] = arreglo[read_reg1] >> write_lit; 
	}
	else if (clr == 0 && wr == 1 && she == 1 && dir == 1) {
		// Banco[writeReg] = Banco[readReg1] << shamt
		write_reg = writeReg;
		read_reg1 = readReg1;
		write_lit = shamt;
		arreglo[write_reg] = arreglo[read_reg1] << write_lit; 
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