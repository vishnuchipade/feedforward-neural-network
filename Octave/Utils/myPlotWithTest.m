function myPlotWithTest(TR_Err, TR_Acc, nIter, TS_Err, TS_Acc, lossType, alpha, eta, lambda, layers_dims, out_dim, path, testName)  #_eta    = ["eta=", num2str(eta)];  #_lambda = ["lambda=", num2str(lambda)];  #_alpha  = ["alpha=", num2str(alpha)];  #_layers = ["layers=", num2str(layers_dims)];  #_out    = ["out neurons=", num2str(out_dim)];  #paramTitle = strcat("loss=", lossType, ",eta=", num2str(eta), ",lambda=", num2str(lambda), ",alpha=", num2str(alpha));  set(0, 'defaultaxesfontsize', 18);# 'title', paramTitle);  %set(0, 'Position', [100,100,1080,1920]);  #figure('Position',[800,-800,1920, 1500]);  subplot(2,2,1);%, "position", [1,100,1,1]);   plot(1:200, TR_Acc(1:200), 'marker', "none", 'color', 'red');    #test set  hold on;  plot(1:200, TS_Acc(1:200), 'marker', 'none', 'linestyle', '--');  hold off;    #legend ("TR set", "TS set");  #legend("boxoff");     %10 is newline ascii number  %legend([_eta,10,_lambda,10,_alpha,10,_layers,10,_out], 'location', 'southeast');  %legend("boxoff");       title(strcat("Estimation per Epoch"), "fontsize", 24);  xlabel("Epochs");  ylabel("MEE");  set (gca, "ygrid", "on");  set (gca, "xgrid", "on");    #axis("square");    subplot(2,2,2);%, "position", [0,1,1,1]);  plot(1:200, TR_Err(1:200), 'marker', "none", 'color', 'red');    # TS Set  hold on;  plot(1:200, TS_Err(1:200), 'marker', 'none', 'linestyle', '--');  hold off;  #legend ("TR set", "TS set");  #legend("boxoff");       title(strcat("Error per Epoch"), "fontsize", 24);  #printf("Training error on the whole dataset: %f \n", TR_Err(nIter));  xlabel("Epochs");  ylabel("MSE");  set (gca, "ygrid", "on");  set (gca, "xgrid", "on");  #axis("square");    subplot(2,2,3);  plot(200:nIter, TR_Acc(200:nIter), 'marker', "none", 'color', 'red');  hold on;  plot(200:nIter, TS_Acc(200:nIter), 'marker', 'none', 'linestyle', '--');  hold off;  xlabel("Epochs");  ylabel("MEE");  set (gca, "ygrid", "on");  set (gca, "xgrid", "on");    subplot(2,2,4);      plot(200:nIter, TR_Err(200:nIter), 'marker', "none", 'color', 'red');  hold on;  plot(200:nIter, TS_Err(200:nIter), 'marker', 'none', 'linestyle', '--');  hold off;  xlabel("Epochs");  ylabel("MSE");  set (gca, "ygrid", "on");  set (gca, "xgrid", "on");          directoryName = path;  paramTitleUnderscore = strcat("loss_", lossType, ",eta_", num2str(eta), ",lambda_", num2str(lambda), ",alpha_", num2str(alpha), ",layers_", num2str(layers_dims));  filename = strcat(directoryName, testName, "_", paramTitleUnderscore, ".png");     print(filename, "-dpng", "-S800,600");end  
