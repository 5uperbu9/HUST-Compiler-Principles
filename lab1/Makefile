CXX = g++
CXXFLAGS := -Wall -g -O2 -std=c++17
INCLUDE = -I include
SRC = main.cc helloworld.cc
OBJ = $(SRC:.cc=.o)

helloworld: $(OBJ)
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ $(OBJ)

%.o: %.cc include/helloworld.hh
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@
