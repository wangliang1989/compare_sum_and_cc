module module_cor
use sacio
public :: sub_cor
public :: sub_norm

contains

subroutine sub_cor(x, y, norm, result, flag)
    implicit none
    real, allocatable, dimension(:), intent(in) :: x, y, norm
    real, allocatable, dimension(:), intent(out) :: result
    real, allocatable, dimension(:) :: cor
    integer, intent(inout) :: flag
    integer :: i, npts, nx, ny, j

    flag = 0
    nx = size(x)
    ny = size(y)
    npts = nx - ny + 1
    allocate(result(1 : npts))
    allocate(cor(1 : npts))
    forall(i=1:npts)
        cor(i) = sum(x(i:i+ny-1)*y(1:ny))
    end forall
    result = cor / norm
end subroutine sub_cor

subroutine sub_norm(norm, x, y, ny, npts)
    implicit none
    real, allocatable, dimension(:), intent(out) :: norm
    real, allocatable, dimension(:), intent(in) :: x, y
    integer, intent(in) :: ny, npts
    integer :: i, j

    allocate(norm(1 : npts))
    do i=1, npts
        norm(i) = sqrt (sum(x(i:i+ny-1) * x(i:i+ny-1)) * sum (y(1:ny) * y(1:ny)))
        if (norm(i) == 0) then
            norm(i) = 1
        end if
    end do
end subroutine sub_norm

end module module_cor
