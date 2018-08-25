
#ifdef _WIN32

#include <windows.h>

#define main() WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PWSTR pCmdLine, int nCmdShow)

#endif

#include "Backend.h"

int main()
{

	Backend::Start();

	return 0;

}