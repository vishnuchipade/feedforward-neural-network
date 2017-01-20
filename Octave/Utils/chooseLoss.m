function f = chooseLoss(lossType)  if(strcmp(lossType, "lms") == 1)    f = @(O,Y)( leastMeanSquare(O,Y) );  elseif (strcmp(lossType,"crossentropy") == 1)    f = @(O,Y) (crossEntropy(O,Y));  else    printf("Loss type not regognized: using lms...\n");     f = @(O,Y)( leastMeanSquare(O,Y) );end