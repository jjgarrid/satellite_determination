function [estimatedVel] = estimate_doppler(fs,fo)
%ESTIMATE_DOPPLER Cálculo de la velocidad usando el efecto Doppler
%   Cálculo de la velocidad de un transponder en órbita usando el efecto
%   Doppler. 
c = 2.997e8; % Velocidad de la luz
estimatedVel = (c*fs)/fo - c; % Fórmula del efecto Doppler
end

