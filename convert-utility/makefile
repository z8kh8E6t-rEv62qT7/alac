# alacconvert make

CXX = clang++
CXXFLAGS = -g -O3 -pipe -c -march=native -static -std=c++20
LDFLAGS = -Wall -O3 -pipe -march=native -static -lstdc++

CODECDIR = ../codec
INCLUDES = ../codec

OBJS = \
main.o \
CAFFileALAC.o \
$(CODECDIR)/libalac.a\

alacconvert:	$(OBJS)
	(cd $(CODECDIR); $(MAKE))
	$(CXX) $(LDFLAGS) $(OBJS) -o alacconvert

main.o : main.cpp
	$(CXX) -I $(INCLUDES) $(CXXFLAGS) main.cpp

CAFFileALAC.o : CAFFileALAC.cpp
	$(CXX) -I $(INCLUDES) $(CXXFLAGS) CAFFileALAC.cpp

clean:
	-rm $(OBJS) alacconvert
