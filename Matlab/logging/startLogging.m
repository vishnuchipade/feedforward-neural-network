function directoryName = startLogging(testType)      logConfig;      newDir = '';    %if i'm doing a CV test  if (testType == CROSS_VL)      newDir = strcat('CV_', testName);  %if i'm doing a hold out  elseif (testType == HOLD_OUT)    newDir = strcat('HO_', testName);  %im doing a single run  else    newDir = strcat('ST_', testName);  end    directoryName = strcat(logPath, '/', newDir, '/');    if ~exist(directoryName,'dir')    mkdir(logPath, newDir);  end    if ~exist(strcat(directoryName, logName))    edit(strcat(directoryName, logName));  end  diary(strcat(directoryName, logName));  end   