function [fig,spec,f,t] = spectro(xn,fs,Nrec,wOn,overlap,dB,units)
% time2PSD takes as inputs
%       xn --- discrete time series
%       fs --- sample rate
%       Nrec --- Number of points in each record
%       wOn --- [1,0] toggles Hann window
%       overlap --- percent overlap as decimal
%       dB --- [1,0] toggles dB
%       units --- units as a string
% and returns
%       fig --- Figure handle
%       spec --- Spectrogram matrix in linear units
%       f --- frequency axis vector
%       t --- time axis vector

% calc time/freq variables
overlapShift = round((1-overlap)*Nrec);
N = length(xn);
dt = overlapShift/fs;
T = (N/overlapShift)*dt;
df = 1/(Nrec*dt/overlapShift);

% Initialize f,t,spec
t = 0:dt:T;
f = 0:df:fs/2;
spec = zeros(length(f),length(t));

% Windowing
if wOn == 1
    w = Hann_window(Nrec)'; % Hann window
else
    w = ones(1,Nrec)'; % Unit window
end

% Populate spec matrix
for ii = 1:(N/overlapShift) 
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
    spec(:,ii) = thisGxx;
end

if dB == 1
    spec = 10*log(spec/1);
end

% Plotting (from Chapter 3 notes)
fig = figure(1);
fRange = df:df:0.8*fs/2; % Remove 0 Hz, remove >0.8*fs
imagesc(t,fRange,spec(2:length(fRange),:)); % Plot spec values in fRange
axis xy
colormap(jet);
hcb = colorbar;
if dB == 1
    ylabel(hcb,[units,' [dB]'])
else
    ylabel(hcb,[units,' [Linear Units]'])
end
xlabel('Time [s]')
ylabel('Frequency [Hz]')

end



