function [estimatedVel] = estimate_doppler(freq1,freq2)
%ESTIMATE_DOPPLER Summary of this function goes here
%   Detailed explanation goes here
c = 343.3;
estimatedVel = -c*(freq1-freq2)/freq2;
end

