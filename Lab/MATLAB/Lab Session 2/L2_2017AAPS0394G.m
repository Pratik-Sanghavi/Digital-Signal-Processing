%% Pratik Ravikumar Sanghavi (2017AAPS0394G)
%% Problem Statement 1:Plotting of functions as per question
%% Program Initialization
clc;
clear all;
close all;
%%  Signal Generation Segment: x[n]
n=-2:2;
stepfn=stepsignal(1,min(n),max(n));
impulsefn=impulsesignal(-1,min(n),max(n));
x=stepfn+impulsefn;
%% Generation of signal flipped in time: x[-n] 
[xflip,nflip]=xreflected(x,n);
%% Generation of time-shifted signal: x[n-2]
[xshift, nshift]=xshifted (x,n,2);
%% Addition of signals: x[n] and x[-n]
[xadd, nadd]=x1plusx2 (x,xflip,n,nflip);
%% Plotting results
figure(1)
subplot(3,1,1)
stem(nflip,xflip);
xlabel('Time(s)');
ylabel('Amplitude');
title('Signal flipped in time: x[-n]');
axis([-3 3 -0.5 3]);
grid on

subplot(3,1,2)
stem(nshift,xshift);
xlabel('Time(s)');
ylabel('Amplitude');
title('Time-shifted signal: x[n-2]');
axis([-1 5 -0.5 3]);
grid on

subplot(3,1,3)
stem(nadd,xadd);
xlabel('Time(s)');
ylabel('Amplitude');
title('Addition of signals: x[n] and x[-n]');
axis([-3 3 -0.5 3]);
grid on
%% Problem Statement 2:Cross Correlation between two finite length sequences
%% Program Initialization
clc;
clear all;
%% Taking input from user
e=0;
while e==0
    prompt="Enter first sequence:\n";
    seq1=input(prompt);
    prompt="Enter second sequence:\n";
    seq2=input(prompt);
    if length(seq1)~=length(seq2)
        uent=input("Do you wish to append zeros to the smaller sequence(Y/N)?",'s');
            if uent=='Y' || uent=='y'
                diff=abs(length(seq1)-length(seq2));
                    if length(seq1)>length(seq2)
                        seq2=[seq2;zeros(diff,1)];
                        break;
                    else
                        seq1=[seq1;zeros(diff,1)];
                        break;
                    end
            else
                continue;
            end
    else
        e=1;
    end    
end
seqcorr=correlation_fun(seq1,seq2);
% function xcorr=correlation_fun(x1,x2)    
% len1=length(x1);
% len2=length(x2);
% xcorr=zeros(len1+len2-1,1);
% for i=-len2+1:1:len1
%     x2s=xshifted (x2,len2,i);
%     if i>0
%         x2s=[zeros(i-1,1);x2s];
%         x2s=x2s(1:len2,1);
%         x1mod=x1;
%     elseif i<=0
%         x1mod=[zeros(abs(i),1);x1];
%         x1mod=x1mod(1:len1,1);
%         x2s=x2;
%     end
%     xcorr(i+len2)=sum(x1mod.*x2s);
% end
% xcorr=[xcorr(1:ceil(length(xcorr)/2)-1);xcorr(ceil(length(xcorr)/2)+1:end)];
% end
disp(seqcorr);
disp(xcorr(seq1,seq2));