function [Sxy,f] = time2CrossPSD(xn,yn,fs)
% time2PSD takes as inputs
%       xn --- discrete time series xn
%       yn --- discrete time series yn
%       fs --- sample rate of both xn, yn
% and returns
%       Sxy --- Cross-spectral Density
%       f --- frequency vector for PSD

if length(xn) == length(yn)

    dt = 1/fs;
    N = length(xn);
    T = dt*N;
    df = 1/(N*dt);

    Xm = fft(xn)*dt;
    Ym = fft(yn)*dt;
    Sxy = (1/T)*Xm.*conj(Ym);

    f = 0:fs/N:fs-df;

else 
    error('\n xn and yn must be same length\n')
end

end