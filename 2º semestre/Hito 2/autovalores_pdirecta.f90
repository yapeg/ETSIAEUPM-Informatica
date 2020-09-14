program potenciadirecta
use modulohito2
implicit none

integer :: n
real(8), allocatable :: A(:, :), x(:)
real(8) :: lambda
integer :: i, j, iter

write(*,*) "Introduce la dimension de la matriz A:"
read(*,*) n
write(*,*)

allocate(A(n,n), x(n))

do i = 1, n
do j = 1, n
call random_number(A(i, j))
enddo
enddo

write(*,*) "Matriz A:"
do i = 1, n
write(*,"(100(f12.5, 2x))") A(i,:)
enddo
write(*,*)

do i = 1, n
call random_number(x(i))
enddo

call autovalor_pdirecta (A, x, lambda, iter)

write(*,*) "Numero de iteraciones necesarias:"
write(*,*) iter
write(*,*)

write(*,*) "El autovector dominante unitario es:"
do i = 1, n
write(*,"(1(f12.5, 1x))") x(i)
enddo
write(*,*)

write(*,*) "Y el autovalor dominante correspondiente es:"
write(*, "(f12.5, 1x)") lambda 

read(*,*)
write(*,*)
end program
