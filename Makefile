all:
	g++ -Iinclude -Iinclude/SDL2 -Iinclude/headers -Llib -o main src/*.cpp -lSDL2main -lSDL2 -lSDL2_image
