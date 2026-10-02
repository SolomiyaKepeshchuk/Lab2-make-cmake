CXX = g++
CXXFLAGS = -Wall -I.

OBJ = main.o calculator.o
TARGET = calculator

all: $(TARGET) libcalculator.a

$(TARGET): $(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)

main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

libcalculator.a: calculator.o
	ar rcs libcalculator.a calculator.o

clean:
	rm -f $(OBJ) $(TARGET) libcalculator.a

