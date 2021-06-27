%% Task 1: Bandstop filter design of given specifications 
%% Program Initialization
clc;
clear all;
close all;
%% Generation of signal with given frequencies
fs=48e3;
t=0:1/fs:0.01-1/fs;
f1=5e3;
f2=12e3;
f3=20e3;
sig=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);
%% FFT Computation
N=length(sig);
% frequency specification
f=(0:1:(floor(N/2)-1)).*fs/N;
%FFT of signal
Sigk=fft(sig,N);
Sigkssb=Sigk(1:N/2);
Sigkssb=Sigkssb./(N/2);
%Magnitude specification
Sigkssbm=abs(Sigkssb);
%% Filter Design segment
fc1=8000;
fc2=16000;
wc1=fc1*2/fs;
wc2=fc2*2/fs;
W=[wc1 wc2];
N_ord=36;
h_hamming=fir1(N_ord,W,'stop');
%% Filtering Segment
sig_fil=filter(h_hamming,1,sig);
%% FFT Computation
N=length(sig_fil);
%FFT of signal
Sig_filk=fft(sig_fil,N);
Sig_filkssb=Sig_filk(1:N/2);
Sig_filkssb=Sig_filkssb./(N/2);
%Magnitude specification
Sig_filkssbm=abs(Sig_filkssb);
%% Plot Generation Segment
subplot(321)
plot(t,sig);
title('Generated Signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(322);
stem(f,Sigkssbm);
title('Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|Signal(f)|');

subplot(323)
plot(t,sig_fil);
title('Filtered Signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(324);
stem(f,Sig_filkssbm);
title('Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|Filtered Signal(f)|');

subplot(325);
stem(h_hamming);
title('Filter Coefficients');
xlabel('Delay element');
ylabel('Coefficient Value');

subplot(326)
[h,w]=freqz(h_hamming,1);
h_log=20*log(h);
plot(w.*fs/2*pi,h_log);
xlabel('Frequency(Hz)');
ylabel('Magnitude of h in dB');
title('Magnitude Response in dB');
%%
clc