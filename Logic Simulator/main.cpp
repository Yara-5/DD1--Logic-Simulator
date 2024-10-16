#include<iostream>
#include<vector>
#include<map>
#include<fstream>
#include<string>
using namespace std;

void FillGateDictionary(map<string, char> gateName);
void InputFiles(ifstream& v, ifstream& s);
void ReadVFile();
void ReadInput();
void ReadOutput();
void ReadWires();
void ReadVectors();
void ReadGates();
void SteadyState();
bool EoSimulation();
void HandleEvent();
int CalculateState(vector<int> in, char gate, int start, int end);

int main()
{
	map<string, char> gateName;
	FillGateDictionary(gateName);
	ifstream Vfile, stumiliFile;
	InputFiles(Vfile, stumiliFile);
	ReadVFile();
	SteadyState();
	while (!EoSimulation())
	{
		HandleEvent();
	}

	return 0;
}

void FillGateDictionary(map<string, char> gateName)		// complete
{
	gateName["and"] = 'a';
	gateName["or"] = 'o';
	gateName["xor"] = 'x';
	gateName["nand"] = 'y';
	gateName["nor"] = 'z';
	gateName["xnor"] = 'w';
	gateName["buf"] = 'b';
	gateName["not"] = 'n';
}

void ReadVFile(ifstream& v, ifstream& s)	// not complete implementation
{
	ReadInput();
	ReadOutput();
	ReadWires();
	ReadGates();
}

int CalculateState(vector<int> in, char gate, int start, int end)	//complete
{
	int ans;
	switch (gate)
	{
		case 'a':
		{
			ans = 1;
			for (int i = start; i <= end; i++)
				ans = ans & in[i];
			break;
		}
		case 'o':
		{
			ans = 0;
			for (int i = start; i <= end; i++)
				ans = ans | in[i];
			break;
		}
		case 'x':
		{
			ans = 0;
			for (int i = start; i <= end; i++)
				if (in[i] == 1)
					ans++;
			ans = ans % 2;
			break;
		}
		case 'y':
		{
			ans = 1;
			for (int i = start; i <= end; i++)
				ans = ans & in[i];
			ans = ~ans;
			break;
		}
		case 'z':
		{
			ans = 0;
			for (int i = start; i <= end; i++)
				ans = ans | in[i];
			ans = ~ans;
			break;
		}
		case 'w':
		{
			ans = 0;
			for (int i = start; i <= end; i++)
				if (in[i] == 1)
					ans++;
			ans = ~(ans % 2);
			break;
		}
		case 'b':
		{
			ans = in[start];
			break;
		}
		case 'n':
		{
			ans = ~in[start];
			break;
		}

	default: return 0;
	}
	return ans;
}