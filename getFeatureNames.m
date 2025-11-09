% get feature names from code
function getFeatureNames(top_features_idx)

% --- Recreate the exact tables used to build X ---
T_beforeAfter = struct2table([vals_before, vals_after]);          % features from calculate_before_after
T_nasal       = struct2table([BmeasureResults, AmeasureResults]); % nasal-cycle features

% Keep only the nasal columns you actually used (1,4,6,9)
nasal_keep = [1,4,6,9];
T_nasal = T_nasal(:, nasal_keep);

% --- Expand table variable names to per-column names ---
feature_names_beforeAfter = expandVarNames(T_beforeAfter);  % handles vector variables (e.g., 5 windows)
feature_names_nasal       = T_nasal.Properties.VariableNames;

% Full feature-name list in the same order as X = [table2array(T_beforeAfter), table2array(T_nasal)]
feature_names_all = [feature_names_beforeAfter, feature_names_nasal];

% --- Use your mask to list selected features ---
% top_features_idx must be the same length as size(X,2)
selected_names = feature_names_all(top_features_idx);

% (Optional) show/save
disp(selected_names(:))
% writetable(cell2table(selected_names(:), 'VariableNames', {'Feature'}), 'selected_features.csv');
end

