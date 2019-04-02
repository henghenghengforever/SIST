#添加period grating
#version:1.0
#Author:hengheng
#date:20190401
p = 6.38e-06; #the period of grating
Duty_cycle = 0.5; #the Duty cycle of grating
z_min = 0;
z_max = 0.1e-6;
addstructuregroup;
set("name","grating");
for(i=1;i<3;i=i+1){
    addrect;
    set("name","InGaAs"+num2str(i));
    set("x",0);
    set("x span",7e-6);
    set("y",i*p-p/2);
    set("y span",p*Duty_cycle);
    set("z min",z_min);
    set("z max",z_max);
    set("material","Ag (Silver) - Johnson and Christy");   
    addtogroup("grating"); 

    addrect;
    set("name","InGaAs"+num2str(i));
    set("x",0);
    set("x span",7e-6);
    set("y",-i*p+p/2);
    set("y span",p*Duty_cycle);
    set("z min",z_min);
    set("z max",z_max);
    set("material","Ag (Silver) - Johnson and Christy");   
    addtogroup("grating"); 
    
    
}