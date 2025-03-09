program central_force_motion
implicit none
real :: r_s,r_e,v_e,M,m,theta,theta_rad,L,v,r
real,parameter :: pi = 3.14, G = 6.67e-11
integer :: 1,n
open(1, file = 'CFM.dat')
M = 6e24 !mass of earth
r_e = 6380 !radius of earth
print *, 'Give the mass of satellite:'
read(*,*) m
print *, 'Give the initial angle of satellite projection:'  !input should be in degree
read(*,*),theta
print *, 'Give the initial height of satellite:'
read(*,*),r_s
r = r_e + r_s
v_e= sqrt((2.0*G*M)/r)
v = v_e/sqrt(2.0)
theta_rad = theta*(pi/180)
L = m*v*r*sin(theta_rad) !angular momentum of satellite
E = (L**2/(2*m*(r**2))) - (G*M*m/r)

