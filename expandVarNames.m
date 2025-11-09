% -------- helper --------
function names = expandVarNames(T)
    names = {};
    for j = 1:width(T)
        vname = T.Properties.VariableNames{j};
        V     = T{:, j};                % numeric array for that variable
        w     = size(V, 2);             % how many columns this variable contributes
        if w == 1
            names{end+1} = vname; %#ok<AGROW>
        else
            for k = 1:w
                names{end+1} = sprintf('%s_%d', vname, k); %#ok<AGROW>
            end
        end
    end
end
