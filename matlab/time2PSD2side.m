function [Sxx,f] = time2PSD2side(xn,fs)
% time2PSD takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
% and returns
%       Sxx --- two-sided PSD
%       f --- frequency vector for PSD

dt = 1/fs;
N = length(xn);
T = dt*N;
df = 1/(N*dt);

Xm = fft(xn)*dt;
Sxx = (1/T)*Xm.*conj(Xm);

f = 0:fs/N:fs-df;

end