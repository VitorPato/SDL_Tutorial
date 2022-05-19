cc = clang
CFLAGS = -Wall -Werror -Wextra $(sdl2-config --cflags --libs)
obj = hello_sdl.o
src = hello_sdl.c
bin = hello_sdl

all: $(bin)

$(bin): $(obj)
	$(cc) $(CFLAGS) $(src) -o $(bin)
 
clean:	
	$(RM) -r hello_sdl *.o *.dSYM