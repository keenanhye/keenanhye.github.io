function [Cxy] = corrCoeff(xn,yn,Rxy)
% Crosscor2delay takes as inputs
%       xn --- discrete time series xn
%       yn --- discrete time series yn
%       Rxy --- Crosscor of xn, yn
% and returns
%       Cxy --- normalized Crosscor (or the Correlation Coefficient)

% Calculate RMS values
rmsxn = sqrt(mean(xn(:,1).^2))
rmsyn = sqrt(mean(yn(:,1).^2))

% Calculate Cxy
Cxy = Rxy/(rmsxn*rmsyn);

end