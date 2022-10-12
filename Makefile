CC = gcc
CFLAGS = -c -std=c99 -g
LDFLAGS = -g
SRC = ${wildcard src/*.c}
HRD = ${wildcard include/*.h}
OBJ = ${SRC:.c=.o}
OBJDIR = obj
EXEC = JankScriptVM


all: ${SRC} ${OBJ} ${EXEC}

${EXEC}: ${OBJ}
	${CC} ${LDFLAGS} $^ -o $@

$(OBJDIR)%.o: %.c ${HDR}
	${CC} ${CFLAGS} $< -o $@

clean:
	rd *.o ${EXEC}