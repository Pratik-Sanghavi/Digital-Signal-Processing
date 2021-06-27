function [xofn,index]=stepsignal(sindex,lindex,rindex)
index=[lindex:rindex];
xofn=[(index-sindex)>=0];
end