function [avgGxx,f] = time2PSDAvgAdvanced(xn,fs,Nrec,wOn,overlap)
% time2PSD takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
%       Nrec --- Number of points in each record
%       wOn --- [1,0] toggles Hann window
%       overlap --- percent overlap as decimal
% and returns
%       Gxx --- one-sided PSD Average
%       f --- frequency vector for PSD

if mod(length(xn),Nrec) ~= 0
    fprintf('\nThis N value will not divide time series evenly, probably will be errors\n')
end

% calc time/freq variables
overlapShift = round((1-overlap)*Nrec);
N = length(xn);
dt = overlapShift/fs;
T = (N/overlapShift)*dt;
df = 1/(Nrec*dt/overlapShift);
f = 0:df:fs/2;

% Windowing
if wOn == 1
    w = Hann_window(Nrec)'; % Hann window
else
    w = ones(1,Nrec)'; % Unit window
end

sumGxx = zeros(1,round(Nrec/2));

for ii = 1:round(N/overlapShift) 
    % If at end of signal, pad window period with zeros
    overage = (ii-1)*overlapShift+Nrec-length(xn);
    if overage > 0
        % Window xn
        thisxn = w(1:(Nrec-overage)).*xn((ii-1)*overlapShift+1:length(xn));
        thisxn = [thisxn,zeros(1,overage)];
    else
        % Window xn
        thisxn = w.*xn((ii-1)*overlapShift+1:(ii-1)*overlapShift+Nrec);
    end
    % Get Gxx for this rec
    [thisGxx,f] = time2PSD(thisxn,fs);
    sumGxx = sumGxx + thisGxx;
end


% Nrecs = length(xn)/N;
% sumGxx = zeros(N/2,1);
% 
% for ii = 1:Nrecs - 1
%     thisGxx = time2PSD(xn((ii-1)*N + 1 : ii*N),fs);
%     sumGxx = sumGxx + thisGxx;
% end

avgGxx = sumGxx/Nrec;
% f = 0:fs/(N-1):fs/2;

end