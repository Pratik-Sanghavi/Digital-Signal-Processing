%% Problem Statement: Plotting Spectrum Using fft
%% Program Initialization
clc;
clear all;
close all;
%% Signal Generation segment
k=32;
fc=10;
fs=k*fc;
t=0:1/fs:2-1/fs;
x=cos(2*pi*fc*t + pi/4);
%% Plot generation in time domain
figure(1)
plot(t,x);
title('x[n]=cos(2 \pi 10 t + \pi/4)');
xlabel('t=nT_s');
ylabel('x[n]');
%% FFT generation
N=256;
X = fft(x,N);
sampleIndex = 0:N-1;
df=fs/N;
f=sampleIndex*df;
%% Plot generation in frequency domain
figure(2)
subplot(3,1,1);
plot(t,x);
hold on;
title('x[n]=cos(2 \pi 10 t + \pi/4)');
xlabel('t=nT_s');
ylabel('x[n]');
subplot(3,1,2);
stem(sampleIndex,abs(X));
title('X[k]');
xlabel('k');
ylabel('|X(k)|');
subplot(3,1,3);
stem(f,abs(X));
title('X[f]');
xlabel('frequencies (f)');
ylabel('|X(f)|');
% Plot centred at DC component
X1 = [(X(N/2+1:N)) X(1:N/2)];
df=fs/N;
sampleIndex = -N/2:N/2-1;
f=sampleIndex*df;
figure(3);
subplot(2,2,1);stem(sampleIndex,abs(X1));
title('X[k]');
xlabel('k');
ylabel('|X(k)|');
subplot(2,2,2);
stem(f,abs(X1));
title('X[f]');
xlabel('frequencies (f)');
ylabel('|X(f)|');
%OR use the built-in function for the same purpose
X2 = fftshift(X);
subplot(2,2,3);
stem(sampleIndex,abs(X2),'r') %sample index on x-axis
title('X[k]');
xlabel('k');
ylabel('|X(k)|');
subplot(2,2,4);
stem(f,abs(X2),'r')
title('X[f]');
xlabel('frequencies (f)');
ylabel('|X(f)|');
%% Plotting phase angles as a function of frequency
angle_x = angle(X2);
figure(4);
stem(f,angle_x,'r')
title('Phase angle plot');
xlabel('frequencies (f)');
ylabel('Phase angle');
% A fix to this would be to set a tolerance
tolerance = 0.00001;
X3 = ceil(abs(X2) -tolerance);
X4 = round (X3 ./(X3+1)); %(X4 is the vector of 0s and 1s)
Angle_p = angle(X2).*X4;
figure(5);
stem(f,Angle_p,'r')
title('Phase angle plot');
xlabel('frequencies (f)');
ylabel('Phase angle');
% in terms of degrees this would be
Angle_deg = Angle_p*180/pi;
figure;
stem(f,Angle_deg,'r')
title('Phase angle plot');
xlabel('frequencies (f)');
ylabel('Phase angle');
%unwrapping phase values between -pi/2:pi/2
X_new=X2;
threshold = max(abs(X2))/10000;
X_new(abs(X2)<threshold)=0;
phase=atan2(imag(X_new),real(X_new))*180/pi;
stem(f,phase);
title('Phase angle plot');
xlabel('frequencies (f)');
ylabel('Phase angle');
