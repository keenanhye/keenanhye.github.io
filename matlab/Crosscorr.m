function [Rxy, tau] = Crosscorr(xn,yn,fs)
% Autocorr takes as inputs
%       xn --- discrete time series xn
%       yn --- discrete time series yn
%       fs --- sample rate
% and returns
%       Rxy --- Cross-correlation
%       tau --- time shift vector for Crosscorr

if length(xn) == length(yn)
    dt = 1/fs;
    N = length(xn);
    T = dt*N;
    df = 1/(N*dt);

    [Sxy,f] = time2CrossPSD(xn,yn,fs);

    Rxy = ifft(Sxy)/dt;

    Rxy = [Rxy(ceil(N/2)+1:length(Rxy)), Rxy(1:ceil(N/2))];
    tau = -T/2:T/N:T/2-dt;
    
else
    error('\n xn and yn must be same length\n')
end

end