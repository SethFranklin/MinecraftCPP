
CC=g++
CC_FLAGS=-Wall
LD_FLAGS=`sdl2-config --cflags --libs` -lSDL2 -lGL -lGLEW
 
EXEC=build/minecraft
SOURCES=$(wildcard source/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)

$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) $(LD_FLAGS) -o $(EXEC)
 
%.o: %.cpp
	$(CC) $(CC_FLAGS) -c $< -o $@ $(LD_FLAGS)
 
clean:
	rm -f $(EXEC) $(OBJECTS)