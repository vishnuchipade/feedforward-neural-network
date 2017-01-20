function [f,g] = chooseOutput(outputActivationType)  if(strcmp(outputActivationType, 'linear') == 1)    f = @(z)(myLinear(z));    g = @(z)(linearGradient(z));  elseif(strcmp(outputActivationType, 'tanh') == 1)    f = @(z)(tanh(z));    g = @(z)(tanhGradient(z));  elseif(strcmp(outputActivationType, 'sigmoid') == 1)    f = @(z)(sigmoid(z));    g = @(z)(sigmoidGradient(z));  else    printf('Output type not regognized: using linear...\n');    f = @(z)(myLinear(z));    g = @(z)(linearGradient(z));  endend