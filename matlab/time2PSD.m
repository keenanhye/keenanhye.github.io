function [Gxx,f] = time2PSD(xn,fs)
% time2PSD takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
% and returns
%       Gxx --- one-sided PSD
%       f --- frequency vector for PSD

dt = 1/fs;
N = length(xn);
T = dt*N;

%% old code changed 9-12-17
%  because went from 0 to N/2+1 giving odd # of pts for Gxx
%
% Xm = fft(xn)*dt;
% Sxx = (1/T)*Xm.*conj(Xm);
% Gxx0 = (1/T)*Xm(1).*conj(Xm(1));
% GxxNover2 = (1/T)*Xm(N/2 + 1).*conj(Xm(N/2 + 1));
% Gxx = 2*Sxx(1:(N/2+1));
% Gxx(1) = Gxx0;
% Gxx(N/2+1) = GxxNover2;

% Create Spectrum and 2-sided PSD
Xm = fft(xn)*dt;
Sxx = (1/T)*Xm.*conj(Xm);

% Create 1-sided PSD
Gxx = 2*Sxx(1:(floor(N/2)+1));
Gxx(1) = (1/T)*Xm(1).*conj(Xm(1));
Gxx(floor(N/2)+1) = (1/T)*Xm(floor(N/2) + 1).*conj(Xm(floor(N/2) + 1));

% Make sure Gxx is entirely real
Gxx = real(Gxx);

% Create frequency vector
f = 0:fs/N:fs/2;

end