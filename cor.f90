program cor
use sacio
use module_cor
implicit none
character(len=:) ,allocatable :: file
integer :: i, flag, npts
real,allocatable,dimension(:) :: x, y, norm, result
real :: b, e
type(sachead) :: headx, heady, head

file = "x.sac"
call sacio_readsac(file, headx, x, flag)
deallocate(file)
file = "y.sac"
call sacio_readsac(file, heady, y, flag)
do i = 1, 100000
    npts = size(x)-size(y)+1
    call sacio_newhead(head, headx%delta, npts, headx%b - heady%e + (heady%npts - 1) * headx%delta)
    call sub_norm(norm, x, size(y), npts)

    call sub_cor(x, y, norm, result, flag)
    deallocate(result)
end do
end program cor
