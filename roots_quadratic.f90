
program solution_of_quadratatic_eqn
    implicit none
    real:: a,b,c,d,x1,x2
    complex:: x3,x4
    print *, "Enter the coefficients: "
    read *, a,b,c
    if (a==0) then
        print*, "This is not an quadratic eqn."
        stop
    end if

    d=b**2-4*a*c
    if (d>0)then
        x1=(-b+sqrt(d))/(2*a)
        x2=(-b-sqrt(d))/(2*a)
        print*,"x1= ",x1
        print*,"x2= ",x2

    elseif(d<0)then
            x3=(-b+sqrt(cmplx(d)))/(2*a)
            x4=(-b-sqrt(cmplx(d)))/(2*a)
            print *, "Complex roots are: "
            print *, "x3= ",x3            !first part of output is real, rest part is imaginary
            print *, "x4= ",x4
    else
            x1=-b/(2*a)
            x2=x1
            print*,"x= ",x1
            print*,"x= ",x2
    end if
end program solution_of_quadratatic_eqn

