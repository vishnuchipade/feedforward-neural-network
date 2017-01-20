function myPlot(TR_Err, TR_Acc, nIter, lossType, alpha, eta, lambda, layers_dims, out_dim, path, testName)  %set(0, 'Position', [100,100,1080,1920]);  %figure('Position',[800,-800,1920, 1500]);  subplot(2,1,1);   plot(1:nIter, TR_Acc(1:nIter));    %legend ('TR set');  %legend('boxoff');     title(strcat('Estimation per Epoch'));  xlabel('Epochs');  ylabel('Estimation (%)');  set (gca, 'ygrid', 'on');  set (gca, 'xgrid', 'on');      subplot(2,1,2);  plot(1:nIter, TR_Err(1:nIter));    %legend ('TR set');  %legend('boxoff');       title(strcat('Error per Epoch'));  fprintf('Training error on the whole dataset: %f \n', TR_Err(nIter));  xlabel('Epochs');  ylabel('Error');  set (gca, 'ygrid', 'on');  set (gca, 'xgrid', 'on');    directoryName = path;  paramTitleUnderscore = strcat('loss_', lossType, ',eta_', num2str(eta), ',lambda_', num2str(lambda), ',alpha_', num2str(alpha), ',layers_', num2str(layers_dims));  filename = strcat(directoryName, testName, '_', paramTitleUnderscore, '.png');     print(filename, '-dpng');end  