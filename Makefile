include config.mk

SRC = ${NAME}.c
OBJ = ${SRC:.c=.o}

all: ${NAME}

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

${OBJ}: config.mk

${NAME}: ${OBJ}
	@echo CC -o $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f ${NAME} ${OBJ}

install:
	@echo installing executable file to ${PREFIX}/bin

uninstall:
	@echo removing executable file from ${PREFIX}/bin

.PHONY: all clean install uninstall
