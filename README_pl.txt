--------------------------------------------------------------------------------
Program zaliczeniowy

MRJP

Maciej £Lopatka

--------------------------------------------------------------------------------

Zaimplementowano:

+ frontend
    + typecast 
	+ przypisanie jako wyrazenie
	+ tablice
    + funkcje zagniezdzone
+ backend
  + jvm
    + typecast
	+ przypisanie jako wyrazenie
  + kod czworkowy
  + llvm
  + x86 (czesciowo)


Programy przechodzi wszystkie testy.

--------------------------------------------------------------------------------

Tablice
int k[3];
k[1] = 3;
int m = k[1];

int k2[3];
k2 = k; // powoduje kopiowanie jednej tablicy do drugiej, a nie przez referencje
// czyli takie cos jest niedozwolone
int k4[5];
k4 = k2; // k4 i k2 nie mieszcza tyle samo elementow

Funckje zagniezdzone (duzo przykladow w przyklady w katalogu examples/nextedfunctions)
int one
[ int k = 32; // deklaracje zmiennych
:
  int two() // deklaracje funkcji
  {
   return 2;
  }
]
{
	return 1;
}

--------------------------------------------------------------------------------

Kompilacja

Kompilatory mozna skompilowac poleceniem make.


--------------------------------------------------------------------------------

Sposob uruchomienia:

JVM

0. Automatycznie testy z grupy examples/good sa uruchamiane 
   za pomoca skryptu test_jvm_core.sh, a rozszerzenia za pomoca test_jvm_ext_asex.sh
   oraz test_jvm_ext_type.sh

1. Program przyjmuje jako parametr nazwe pliku generujac program o nazwie 
   generowanej na podstawie nazwy pliku.

   Jesli nie dostarczy sie jako parametr nazwy pliku to program oczekuje
   podania kodu na standardowe wej-wyj, i na nim wypisze wygenerowany kod.


Kod czworkowy

1. Program przyjmuje jako parametr nazwe pliku generujac kod czworkowy 
   do pliku o rozszerzeniu .tac z nazwa na podstawie nazwy pliku wejsciowego.

   Jesli nie dostarczy sie jako parametr nazwy pliku to program oczekuje
   podania kodu na standardowe wej-wyj, i na nim wypisze wygenerowany kod.


LLVM

0. Automatycznie testy z grupy examples/good sa uruchamiane 
   za pomoca skryptu test_llvm_core_clean.sh
   Skrypt testowy zakalda ze programy lli i llvm-as sa
   widoczne w srodowisku.

1. Program przyjmuje jako parametr nazwe pliku generujac kod LLVM 
   do pliku o rozszerzeniu .ll z nazwa na podstawie nazwy pliku wejsciowego.

   Jesli nie dostarczy sie jako parametr nazwy pliku to program oczekuje
   podania kodu na standardowe wej-wyj, i na nim wypisze wygenerowany kod.


X86
0. W kompilatorze z86 duzej czesci jest zrobione wszystko dla intow, 
   dla pozostalych typow nie dziala nic.

   Plik JavaletteStdLibBackend.s zawiera deklaracje wlaczane do
   kompilacji programu.
   Plik JavaletteStdLib.s zawiera  deklaracje funkcji wbudowanych.
   

    Przyklad kompilacji programu:
    cat test.jl | X86CompilerTest > test.s
    gcc -a test.s JavaletteStdLib.s


- wywolywanie funkcji, w tym: printInt(), readInt()
- ify, while, for
- deklaracje zmiennych 


--------------------------------------------------------------------------------

