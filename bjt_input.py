import matplotlib.pyplot as plt
V1=float(input("enter the value of CE voltage of 1st set: "))
V2=float(input("enter the value of CE voltage of 2nd set: "))
v1=[0,20,80,150,250,400,460,480,500,520,540,560,580,600,620,640]
v2=[0,30,90,190,250,400,460,480,500,520,540,560,580,600,620,640]
I1=[0.0,0.2,0.8,1.6,2.4,4.5,5.7,6.5,7.5,8.2,11.2,13.7,18.2,22.9,34.6,63.5]
I2=[0.0,0.4,0.9,1.8,2.7,4.3,5.5,6.3,8.2,10.1,10.8,15.6,22.1,25.7,46.8,64.9]
plt.xlabel("base emitter voltage in mV",size=30)
plt.ylabel("base current in \muA",size=30)
plt.plot(v1,I1,color='b',ls='-',lw=1,label="V1=0.5V")
plt.plot(v2,I2,color='r',ls='-',lw=1,label="V2=8.0V")
plt.grid()
plt.legend(loc='best')
plt.show()
