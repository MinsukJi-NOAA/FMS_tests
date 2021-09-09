module my_data2

  type :: grid_all
    integer :: i, j
    real(4), allocatable :: x_r4, y_r4
    real(8), allocatable :: x_r8, y_r8
  end type grid_all

end module my_data2
