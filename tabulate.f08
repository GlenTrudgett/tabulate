! This program creates a table of values and writes the values to a file.
! The function (f_x), can be changed to represent the function under investigation
!
! Author: Glen Trudgett
! Date:   21/02/2016
!
!

program tabulate

  implicit none
  
  real ::  f_x, x, step
  integer :: n,i,a,b
  
  write(*,*) "The endpoint values a,b? "
  read(*,*) a, b
  write(*,*) "Number of intervals? "
  read(*,*) n
  write(*,*)
  step = (b - a)/real(n)
  x = a
  write(*,*) "Step: ", step
  write(*,*) "*****************************"
  
  open(13, file="data.gnu", status="new", action="write")
  
  
  do i = 0, n
    f_x = (3.0/5.0)*(30.0*x + x**2)
    write(13,*) i, f_x
    x = x + step
  end do
  close(13)
  

end program tabulate
