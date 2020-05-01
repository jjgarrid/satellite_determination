function psd=psdfft(y,Fs)
  L=length(y);
  NFFT = 2^nextpow2(L);
  Y = fft(y,NFFT)/L;
  f = Fs/2*linspace(0,1,NFFT/2+1);
  psd=2*abs(Y(1:NFFT/2+1));

    plot(f,psd) 
    title('Single-Sided Amplitude Spectrum of y(t)')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
end

