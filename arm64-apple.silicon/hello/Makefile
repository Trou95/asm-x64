
all: main.o
	ld -o main main.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64


all.o: main.s
	as -arch arm64 -o main.o main.s
