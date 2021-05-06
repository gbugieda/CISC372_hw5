
all: image imageOMP imagePThread
image:image.c image.h
	gcc -g image.c -o image -lm

imageOMP:image-OMP.c image.h
	gcc -g image-OMP.c -o imageOMP -lm -fopenmp

imagePThread:image-PThread.c image-PThread.h
	gcc -g image-PThread.c -o imagePThread -lm -lpthread

clean:
	rm -f image output.png image imageOMP imagePThread