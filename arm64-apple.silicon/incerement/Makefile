
all: inc.o
	ld -o inc inc.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64


all.o: inc.s
	as -arch arm64 -o inc.o inc.s
