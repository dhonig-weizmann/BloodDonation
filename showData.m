figure;
numData = 7500;
t = 1:numData;
t = t/25;
subjects = [10, 56,94];
%ind = 1;
for ind = 1:length(subjects)
    subjectNum = subjects(ind);

    subplot(3,3,3*(ind-1) +1)
    plot(t,before{subjectNum}(1:numData))
    setPlotParameters(sprintf("%d: before", subjectNum))

    subplot(3,3,3*(ind-1) +2)
    plot(t,donation{subjectNum}(1:numData))
    setPlotParameters(sprintf("%d: during", subjectNum))

    subplot(3,3,3*(ind-1) +3)
    plot(t,after{subjectNum}(1:numData))
    setPlotParameters(sprintf("%d: after", subjectNum))
end