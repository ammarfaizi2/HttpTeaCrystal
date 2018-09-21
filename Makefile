
MAIN_POINT			=	src/server.cr
OUTFILE				=	server

COMPILER			=	crystal
COMPILER_FLAGS		=	build -o

all:
	${COMPILER} ${COMPILER_FLAGS} ${OUTFILE} ${MAIN_POINT} ${ROUTES}
clean:
	${RM} ${EXTENSION} ${OBJECTS}
