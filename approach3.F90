module my_approach3
  use my_data2

  type(grid_all) :: grid

contains

  subroutine grid_init(a)
    class(*), dimension(:), intent(in) :: a

    select type (a)
    type is (real(4))
      allocate(grid%x_r4, grid%y_r4)
      grid%i = 1
      grid%j = 2
      grid%x_r4 = a(1)
      grid%y_r4 = a(2)
    type is (real(8))
      allocate(grid%x_r8, grid%y_r8)
      grid%i = 1
      grid%i = 1
      grid%j = 2
      grid%x_r8 = a(1)
      grid%y_r8 = a(2)
    end select
  end subroutine grid_init

  subroutine do_something_with_grid()
    if (allocated(grid%x_r4)) then
      print*, grid%i, grid%j, grid%x_r4, grid%y_r4
    else if (allocated(grid%x_r8)) then
      print*, grid%i, grid%j, grid%x_r8, grid%y_r8
    end if
  end subroutine do_something_with_grid

  subroutine grid_end()
    if (allocated(grid%x_r4)) then
      deallocate(grid%x_r4, grid%y_r4)
    else if (allocated(grid%x_r8)) then
      deallocate(grid%x_r8, grid%y_r8)
    end if
  end subroutine grid_end

end module my_approach3
