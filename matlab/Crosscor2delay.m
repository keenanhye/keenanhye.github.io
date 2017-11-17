function [delay] = Crosscor2delay(xn,Rxy)
% Crosscor2delay takes as inputs
%       xn --- discrete time series xn
%       Rxy --- Crosscor of xn, yn
% and returns
%       delay --- index delay needed to move yn to xn
% delay should be SUBTRACTED from signal yn to time-align
% TIP: Make sure signals have enough zero padding before Crosscor,
% otherwise, may get circular correlation --> incorrect delays.


[~,iMax] = max(Rxy);

if iMax > length(Rxy)/2
    delay = -(length(Rxy)-iMax)+length(Rxy)/2;
else
    delay = iMax-length(Rxy)/2;
end

delay = round(delay);

end