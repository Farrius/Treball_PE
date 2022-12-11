all: insertion quick generator

insertion: insertion.cpp
	g++ -o insertion insertion.cpp

quick: quick.cpp
	g++ -o quick quick.cpp

generator: generator.cpp
	g++ -o generator generator.cpp

clean:
	rm insertion quick generator
