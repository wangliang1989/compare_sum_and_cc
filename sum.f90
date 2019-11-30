program sum
use sacio
implicit none
character(len=:) ,allocatable :: file
integer :: i, flag
real, allocatable, dimension(:) :: data, x
type(sachead) :: head
real :: r0, r1
real :: stk, dip, rak, az, sstk, sdip, srak, sstk2, sdip2, cstk, cdip, crak, cstk2, cdip2

file = "x.sac"
call sacio_readsac(file, head, data, flag)
do i = 1, 12345
    stk = 45
    dip = 45
    rak = 45
    az = 123

    stk=(az-stk)*1.745329252e-2
    dip=dip*1.745329252e-2
    rak=rak*1.745329252e-2
    sstk=sin(stk)
    cstk=cos(stk)
    sdip=sin(dip)
    cdip=cos(dip)
    srak=sin(rak)
    crak=cos(rak)
    sstk2=2*sstk*cstk
    cstk2=cstk*cstk-sstk*sstk
    sdip2=2*sdip*cdip
    cdip2=cdip*cdip-sdip*sdip
    r0=0.5*srak*sdip2
    r1=-sstk*srak*cdip2+cstk*crak*cdip
    x = r0 * data + r1 * data
end do
end program sum
