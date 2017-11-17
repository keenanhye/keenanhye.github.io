function [avgGxx,f] = time2PSDAvg(xn,fs,N)
% time2PSD takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
%       N --- Number of points in each record
% and returns
%       Gxx --- one-sided PSD Average
%       f --- frequency vector for PSD

if mod(length(xn),N) ~= 0
    fprintf('\nThis N value will not divide time series evenly, probably will be errors\n')
end

Nrecs = length(xn)/N;
sumGxx = zeros(N/2,1);

for ii = 1:Nrecs - 1
    thisGxx = time2PSD(xn((ii-1)*N + 1 : ii*N),fs);
    sumGxx = sumGxx + thisGxx;
end

avgGxx = sumGxx/Nrecs;
f = 0:fs/(N-1):fs/2;

end
