FC = gfortran
all: sacio.mod module_cor.mod cor sum clean

sacio.mod: sacio.f90
	$(FC) -c $^

module_cor.mod: module_cor.f90
	$(FC) -c $^

%.o: %.f90
	$(FC) -c $^

sum: %: %.o sacio.o
	$(FC) $^ -o sum

cor: %: %.o sacio.o module_cor.o
	$(FC) $^ -o cor

clean:
	-rm *.o *.mod
