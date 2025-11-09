load('holter_timings.mat'); % Load the .mat file containing the holter_timings struct
%subjData = holter_timings.subjData; % Access the main variable subjData from the struct

% subjData is a 1x96 struct array with fileds. Data is a table field.
% Extract column L_Raw and R_raw from Data. save it as a simple integer
% matrix in an additional field in the struct called Raw_Data
for i = 1:length(subjData)
    subjData(i).Raw_Data = [subjData(i).Data.L_Raw, subjData(i).Data.R_Raw];
end

%save subjData as holter_timings_raw
save('holter_timings_raw.mat', 'subjData');
