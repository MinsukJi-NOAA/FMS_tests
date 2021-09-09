program main
  use my_approach3

  real(4), dimension(2) :: a
  a(1) = 1.0
  a(2) = 2.0

  call grid_init(a)
  call do_something_with_grid
  call grid_end
end program main
