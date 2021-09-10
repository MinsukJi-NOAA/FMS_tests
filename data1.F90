module my_data1

  type :: grid_base
    integer :: i, j
  end type grid_base

  type, extends(grid_base) :: grid_r4
    real(4) :: x, y
  end type grid_r4

  type, extends(grid_base) :: grid_r8
    real(8) :: x, y
  end type grid_r8

  private
  public :: grid_r4, grid_r8, grid_base

end module my_data1
