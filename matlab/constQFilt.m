function [y] = constQFilt(xn,fs,f0,Q)

f0warp = tan(pi*f0/fs)/(pi/fs);
w0 = f0warp*2*pi;

num_s_coefficients = [w0/Q, 0];
den_s_coefficients = [1, w0/Q, w0^2];
[b,a] = bilinear_xform(num_s_coefficients, den_s_coefficients, fs); 
y = filter(b,a,xn);

% % Test Plots
% [h,t] = impz(b,a);
% [H,W] = freqz(b,a,length(xn));
% 
% figure(1)
% plot(t,h)
% xlabel('Time [sec]')
% ylabel('Impulse Response')
% title('Impulse Response of Constant-Q filter')
% 
% figure(2)
% semilogy(fs*W/(2*pi),H)
% xlabel('Frequency [Hz]')
% ylabel('Frequency Response')
% title('Frequency Response of Constant-Q filter')


end