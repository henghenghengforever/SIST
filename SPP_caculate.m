% 按照给定的两种材料的参数计算SPP相关参数
% date：2018.08.15
% author：hengheng

%% original parameters
c = 3e8; % speed of light
lambad = 975e-9; %the wavelength of incide light(m)

%% meterial parameter
epsilon_d = 3; %dielectric
epsilon_m = -43.441+1i*2.72; %metal

%% the parameters of SPP
k0 = 2*pi/lambad;
k_spp = k0*sqrt(epsilon_d*epsilon_m/(epsilon_d+epsilon_m)); 
delta_k = real(k_spp-k0);
p = 2*pi/delta_k*1e6 % \mu m
