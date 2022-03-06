# libalac make

CC = clang
CXX = clang++
CFLAGS = -g -O3 -pipe -c -march=native -static -std=c18
CXXFLAGS = -g -O3 -pipe -c -march=native -static -std=c++20

INCLUDES = .

OBJS = \
EndianPortable.o \
ALACBitUtilities.o \
ALACDecoder.o \
ALACEncoder.o \
ag_dec.o \
ag_enc.o \
dp_dec.o \
dp_enc.o \
matrix_dec.o \
matrix_enc.o

libalac.a:	$(OBJS)
	llvm-ar rcs libalac.a $(OBJS)

EndianPortable.o : EndianPortable.c
	$(CC) -I $(INCLUDES) $(CFLAGS) EndianPortable.c

ALACBitUtilities.o : ALACBitUtilities.c
	$(CC) -I $(INCLUDES) $(CFLAGS) ALACBitUtilities.c

ALACDecoder.o : ALACDecoder.cpp
	$(CXX) -I $(INCLUDES) $(CXXFLAGS) ALACDecoder.cpp

ALACEncoder.o : ALACEncoder.cpp
	$(CXX) -I $(INCLUDES) $(CXXFLAGS) ALACEncoder.cpp

ag_dec.o : ag_dec.c
	$(CC) -I $(INCLUDES) $(CFLAGS) ag_dec.c

ag_enc.o : ag_enc.c
	$(CC) -I $(INCLUDES) $(CFLAGS) ag_enc.c

dp_dec.o : dp_dec.c
	$(CC) -I $(INCLUDES) $(CFLAGS) dp_dec.c

dp_enc.o : dp_enc.c
	$(CC) -I $(INCLUDES) $(CFLAGS) dp_enc.c

matrix_dec.o : matrix_dec.c
	$(CC) -I $(INCLUDES) $(CFLAGS) matrix_dec.c

matrix_enc.o : matrix_enc.c
	$(CC) -I $(INCLUDES) $(CFLAGS) matrix_enc.c

clean:
	-rm $(OBJS) libalac.a
