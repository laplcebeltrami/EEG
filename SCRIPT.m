%------------------------------
% EEG of single epilpsy seizure patient EEG data
% This is the full data published in 
%
% Wang, Y., Ombao, H., Chung, M.K. 2018 Topological data 
% analysis of single-trial electroencephalographic signals. 
% Annals of Applied Statistics, 12:1506-1534
% https://pages.stat.wisc.edu/~mchung/papers/wang.2018.annals.pdf
%
% The unformatted time series data contains EEG time series of
% 8 channels: c3, c4, cz, p3, p4, t3, t4, t5
%
% Sampling rate is 100 Hertz 
% Total Time point T = 32678
% First half is preseizure; right half is seizure
%
% Please reference this paper if you are using the dataset. 
% 
%
% (C) 2025 Moo K. Chung
% Univesity of Wisconsin-Madison


% Let's load the original EEG data from
% Channel names:left central c3 
% Other chennels can be load simiarly.
c3 = readmatrix('c3');
c3 = reshape(c3', [], 1);
c3 = c3(1:end-2); %The last two time points has 'NaN', which are removed. 

figure; plot(c3, 'r') %whole EEG time series is plotted 
T=length(c3) %32678
c3nonsizure = c3(1:T/2); 
% The first half of EEG is pre-sizuere (colored blue) while 
% the last half of EEG is during sizure (colored red)
hold on; plot(c3nonsizure, 'b') 

% Refined Research Questions:
% (1) Can we accurately identify the precise onset time of 
%     epileptic seizures from EEG signals? Currently they are determiend by
%     a neurologist and set at the middle of time series. 
% (2) Are there distinct topological characteristics in EEG network 
%     connectivity patterns between pre-seizure and seizure periods?
% (3) Can we pinpoint specific EEG channels exhibiting significant deviations 
%     from the general EEG activity patterns, potentially reflecting focal or 
%     causal origins of seizure activity?
%
% Question (2) and (3) are addressed in Wang (2018) paper.  
