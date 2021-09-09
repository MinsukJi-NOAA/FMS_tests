A derived type has real components. These real components need to be real(4) OR real(8) dependeing on the type of the dummy argument passed to the grid_init subroutine in approach*.F90 files.

To try approach 1: gfortran -std=f2018 data1.F90 approach1.F90 main.F90 (after modifying line 2 of main.F90 to use my_approach1)

To try approach 2: gfortran -std=f2018 data1.F90 approach2.F90 main.F90 (after modifying line 2 of main.F90 to use my_approach2)

To try approach 3: gfortran -std=f2018 data2.F90 approach3.F90 main.F90 (after modifying line 2 of main.F90 to use my_approach3)
