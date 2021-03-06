
clear ; close all; clc
addpath(genpath('./Training'));
addpath(genpath('./ModelSelection_Assessment'));
addpath(genpath('./Estimates'));
addpath(genpath('./Activations'));
addpath(genpath('./Utils'));
addpath(genpath('./logging'));

config;
logConfig;

%#### SIMPLE TRAINING (NO MODEL SELECTION METHODS) ####
%logDir = startLogging(SIMPLE_T);
%[TR_Err, TR_Acc, nIter, Wres, W_O_res, output_hidden_units] = train(X, Y, eta, lambda, alpha, outputActivation, hiddenActivation, lossType, estimateMeasure, threshold, init_range, maxIter, layers_dims, runs, useAnnealing, useFanIn);
%stopLogging();
%######################################################

%#### SIMPLE TRAINING (NO MODEL SELECTION METHODS) WITH 'TEST' COMPARING ####
%logDir = startLogging(SIMPLE_T);
%[TR_Err, TR_Acc, nIter, Wres, W_O_res, output_hidden_units, TS_a, TS_b] = trainWithValidation(Xtrain, Ytrain, Xval, Yval, eta, lambda, alpha, outputActivation, hiddenActivation, lossType, estimateMeasure, threshold, init_range, maxIter, layers_dims, runs, useAnnealing, useFanIn);
%stopLogging();
%############################################################################

% learning rate
%eta_range = [0.09];%[0.035 0.02];
% momentum constant
%alpha_range = [0.015 0.05  0.01];
% regularization constant
%lambda_range = [0.00015 0.0005 0.0007];


%#### HOLD OUT MODEL SELECTION ####
%[estimation, accuracy, W, W_O, eta_val, alpha_val, lambda_val] = hold_out(X, Y, 80, 10, eta_range, alpha_range, lambda_range, outputActivation, hiddenActivation, lossType, estimateMeasure, threshold, init_range, maxIter, layers_dims, runs, useAnnealing, useFanIn, true);
%fprintf("Chosen parameters: eta = %f, alpha = %f and lambda = %f. Assessment value on TS:\n Cost = %f \t Accuracy:%f\n", eta_val, alpha_val, lambda_val, estimation, accuracy);
%##################################

%#### CROSS VALIDATION + GRID SEARCH MODEL SELECTION ####
% Cross validation for model selection
%[W, W_O, eta_val, alpha_val, lambda_val] = modelSelection_CV(4, X, Y, eta_range, alpha_range, lambda_range, outputActivation, hiddenActivation, lossType, estimateMeasure, threshold, init_range, maxIter, layers_dims, runs, useAnnealing, useFanIn, true);
%########################################################
