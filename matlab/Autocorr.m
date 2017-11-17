function [Rxx, tau] = Autocorr(xn,fs)
% Autocorr takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
% and returns
%       Rxx --- Autocorrelation
%       tau --- time shift vector for Autocorr

dt = 1/fs;
N = length(xn);
T = dt*N;
df = 1/(N*dt);

[Gxx,f] = time2PSD2side(xn,fs);

Rxx = ifft(Gxx)/dt;

Rxx = [Rxx(ceil(N/2)+1:length(Rxx)), Rxx(1:ceil(N/2))];
tau = -T/2:T/N:T/2-dt;

end