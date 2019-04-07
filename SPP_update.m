lambda = 1.0e-6; %meter
k  = 1/lambda; 
theta = 30; %the angle of incidence of light
epsilon1 = 2.11438; % permetivity of dielectric
epsilon2 = -50.6074; % permetivity of metal
kz = k*sqrt((epsilon1*epsilon2)/(epsilon1+epsilon2));
kl = k*sin(deg2rad(theta)); % wave number of light in surface director    
kg = kz-kl;   % wave number match,the wave number of grating
p = 2*pi/kg;  % periods of grating

