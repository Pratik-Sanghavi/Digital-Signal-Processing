function xcorr=correlation_fun(x1,x2)    
len1=length(x1);
len2=length(x2);
if length(x1)~=length(x2)
    diff=abs(length(x1)-length(x2));
    if length(x1)>length(x2)
        x2=[x2;zeros(diff,1)];
    else
        x1=[x1;zeros(diff,1)];
    end
end
xcorr=zeros(len1+len2-1,1);
for i=-len2+1:1:len1
    x2s=xshifted (x2,len2,i);
    if i>0
        x2s=[zeros(i-1,1);x2s];
        x2s=x2s(1:len2,1);
        x1mod=x1;
    elseif i<=0
        x1mod=[zeros(abs(i),1);x1];
        x1mod=x1mod(1:len1,1);
        x2s=x2;
    end
    xcorr(i+len2)=sum(x1mod.*x2s);
end
xcorr=[xcorr(1:ceil(length(xcorr)/2)-1);xcorr(ceil(length(xcorr)/2)+1:end)];
end