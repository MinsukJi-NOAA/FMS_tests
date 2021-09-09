module my_approach1
  use my_data1

  class(*), allocatable, target :: grid

contains

  subroutine grid_init(a)
    class(*), dimension(:), intent(in) :: a

    select type (a)
    type is (real(4))
      allocate(grid_r4::grid)
      select type (grid)
      type is (grid_r4)
        grid%i = 1
        grid%j = 2
        grid%x = a(1)
        grid%y = a(2)
      end select
    type is (real(8))
      allocate(grid_r8::grid)
      select type (grid)
      type is (grid_r8)
        grid%i = 1
        grid%j = 2
        grid%x = a(1)
        grid%y = a(2)
      end select
    end select
  end subroutine grid_init


  subroutine do_something_with_grid()
    select type (grid)
    type is (grid_r4)
      print*, grid%i, grid%j, grid%x, grid%y
    type is (grid_r8)
      print*, grid%i, grid%j, grid%x, grid%y
    end select
  end subroutine do_something_with_grid


  subroutine grid_end()
    deallocate(grid)
  end subroutine grid_end

end module my_approach1
