S3 = [1/2 9/16 5/8 2/3 3/4 5/6 15/16];
S4 = 2*S3;
S5 = 2*S4;

f0 = 261.63; % reference frequency, C4
fs = 44100; % sample rate
dt = 1/fs;          
Tf = 0.5;
tf = [0:dt:Tf];
[A B] = size(tf);
modf = sin(pi*tf/tf(end));
% modf = 1;

F3 = zeros(7,B);
F3(1,:) = modf.*cos(2*pi*S3(1)*f0*tf);
F3(2,:) = modf.*cos(2*pi*S3(2)*f0*tf);
F3(3,:) = modf.*cos(2*pi*S3(3)*f0*tf);
F3(4,:) = modf.*cos(2*pi*S3(4)*f0*tf);
F3(5,:) = modf.*cos(2*pi*S3(5)*f0*tf);
F3(6,:) = modf.*cos(2*pi*S3(6)*f0*tf);
F3(7,:) = modf.*cos(2*pi*S3(7)*f0*tf);

F4 = zeros(7,B);
F4(1,:) = modf.*cos(2*pi*S4(1)*f0*tf);
F4(2,:) = modf.*cos(2*pi*S4(2)*f0*tf);
F4(3,:) = modf.*cos(2*pi*S4(3)*f0*tf);
F4(4,:) = modf.*cos(2*pi*S4(4)*f0*tf);
F4(5,:) = modf.*cos(2*pi*S4(5)*f0*tf);
F4(6,:) = modf.*cos(2*pi*S4(6)*f0*tf);
F4(7,:) = modf.*cos(2*pi*S4(7)*f0*tf);

F5 = zeros(7,B);
F5(1,:) = modf.*cos(2*pi*S5(1)*f0*tf);
F5(2,:) = modf.*cos(2*pi*S5(2)*f0*tf);
F5(3,:) = modf.*cos(2*pi*S5(3)*f0*tf);
F5(4,:) = modf.*cos(2*pi*S5(4)*f0*tf);
F5(5,:) = modf.*cos(2*pi*S5(5)*f0*tf);
F5(6,:) = modf.*cos(2*pi*S5(6)*f0*tf);
F5(7,:) = modf.*cos(2*pi*S5(7)*f0*tf);

for i = 1:7
    wavwrite(F3(i,:),fs,sprintf('F3_%d.wav',i));
    wavwrite(F4(i,:),fs,sprintf('F4_%d.wav',i));
    wavwrite(F5(i,:),fs,sprintf('F5_%d.wav',i));
end