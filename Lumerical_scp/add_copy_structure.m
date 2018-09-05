#添加SLS层
InGaAs = -5.6e-9;
InP = -50e-9;
high = -0.14e-6; #整个层的起始厚度
addstructuregroup;
set("name","quantumwell");
for(i=1;i<9;i=i+1){
    addrect;
    set("name","InGaAs"+num2str(i));
    set("x",0);
    set("x span",7e-6);
    set("y",0);
    set("y span",8e-6);
    set("z min",high);
    set("z max",high+InGaAs);
    high = high+InGaAs;    #将high调整到新的高度
    set("material","InGaAs");   
    addtogroup("quantumwell"); 
    
    addrect;
    set("name","InP"+num2str(i));
    set("x",0);
    set("x span",7e-6);
    set("y",0);
    set("y span",8e-6);
    set("z min",high);
    set("z max",high+InP);
    high = high+InP;    #将high调整到新的高度
    set("material","InP - Palik");
    addtogroup("quantumwell"); 
}