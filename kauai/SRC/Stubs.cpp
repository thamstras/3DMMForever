// STUB FUNCTIONS
// Pentium FDIV fixup functions from early MSVCRT.
// Not present in any modern runtimes.
// Needed to fix audiod.lib etc.
// TODO: Either we need to replace audio or these need to DO something.

extern "C"
{
	extern int _adjust_fdiv;
	extern void __cdecl _adj_fdiv_r();
	extern void __cdecl _adj_fdiv_m32();
}

int _adjust_fdiv = 0;

void __cdecl _adj_fdiv_r()
{

}

void __cdecl _adj_fdiv_m32()
{

}