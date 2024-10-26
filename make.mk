all: kernel.bin

kernel.bin: boot.bin kernel.o
    cat boot.bin kernel.o > kernel.bin

boot.bin: boot.asm
    nasm -f bin boot.asm -o boot.bin

kernel.o: kernel.c
    gcc -ffreestanding -c kernel.c -o kernel.o

clean:
    rm -f *.bin *.o
