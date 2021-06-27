%% Pratik Ravikumar Sanghavi(2017AAPS0394G)
%% Task 1: Audio Recording and Operations
%% Program Initialization
clc;
clear all;
close all;
%% a)Audio Recording and Spectral and Time Domain Plot
%% Specification of Parameters
Fs=8e3;
nBits=16;
t=0:1/Fs:5-1/Fs;
%% Record audio
RecObject1=audiorecorder(Fs, nBits, 1);
% Record an audio of 5 seconds
input('Press Enter to Start Recording');
disp('Start Audio Record');
recordblocking(RecObject1, 5);
disp('End of Audio Record');
% Create the numeric array
AudioData=getaudiodata(RecObject1, 'double');
Data=AudioData.*(2^(nBits-1));
%% FFT Computation
N=length(AudioData);
% frequency specification
f=(0:1:(floor(N/2)-1)).*Fs/N;
%FFT of signal
Datak=fft(Data,N);
Datakssb=Datak(1:N/2);
Datakssb=Datakssb./(N/2);
%Magnitude specification
Datakssbm=abs(Datakssb);
%% Plot audio data
figure;
subplot(121)
plot(t,Data);
title('Audio Signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(122);
plot(f,Datakssbm);
title('Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|Data(f)|');
%% b)Impinging Pure Tone Noise onto Signal 
%% Generation of sine wave of 3kHz
f1=3e3;
A=10*randn(1,1);
noise=A*sin(2*pi*f1*t);
%% Impinging sine wave onto audio signal
nsig=Data'+noise;
%% FFT Computation
N=length(nsig);
% frequency specification
f=(0:1:(floor(N/2)-1)).*Fs/N;
%FFT of signal
Nsigk=fft(nsig,N);
Nsigkssb=Nsigk(1:N/2);
Nsigkssb=Nsigkssb./(N/2);
%Magnitude specification
Nsigkssbm=abs(Nsigkssb);
%% Plot audio data
figure;
subplot(121)
plot(t,nsig);
title('Audio Signal impinged with Pure Tone Noise of 3kHz');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(122);
plot(f,Nsigkssbm);
title('Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|Nsigk(f)|');
%% c) Filtering noise from generated signal and display
%% Filter Specification
h=[1 1.414 1];
%% Filtering Noisy Signal
y=conv(nsig,h);
y=y(1:length(t));
%% FFT Computation
N=length(y);
% frequency specification
f=(0:1:(floor(N/2)-1)).*Fs/N;
%FFT of signal
Yk=fft(y,N);
Ykssb=Yk(1:N/2);
Ykssb=Ykssb./(N/2);
%Magnitude specification
Ykssbm=abs(Ykssb);
%% Plot audio data
figure;
subplot(121)
plot(t,y);
title('Filtered Audio Signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(122);
plot(f,Ykssbm);
title('Amplitude Spectrum');
xlabel('Frequency(Hz)');

ylabel('|Y(f)|');