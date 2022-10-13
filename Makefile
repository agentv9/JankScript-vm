CC = gcc
CFLAGS = -c -std=c99 -g
LDFLAGS = -g
SRC = ${wildcard src/*.c}
HRD = ${wildcard include/*.h}
OBJ = ${SRC:.c=.o}
OBJDIR = obj
EXEC = JankScript


all: ${SRC} ${OBJ} ${EXEC}

${EXEC}: ${OBJ}
	${CC} ${LDFLAGS} $^ -o $@

$(OBJDIR)%.o: %.c ${HDR}
	${CC} ${CFLAGS} $< -o $@

clean:
	 del /s /q *.o ${EXEC}