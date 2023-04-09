clc;
clear all;
x_atan = (0:1/2^14:1-1/2^14);
x_sqrt = (0:1/2^14:1-1/2^14);

% target function value generation
y_sqrt = sqrt(x_sqrt);
y_atan = atan(x_atan);

interp_num = 4;
% sqrt interpolation
% sqrt equal distance interp
x_sqrt_interp = x_sqrt(1:round(length(x_sqrt)/(interp_num-1)):length(x_sqrt));
[y_sqrt_interp, SSE_sqrt_interp, RMSE_sqrt_interp,max_err_sqrt_interp]= my_linear_interp(x_sqrt, y_sqrt, x_sqrt_interp);
figure(1)
plot(x_sqrt, y_sqrt, '-', x_sqrt, y_sqrt_interp, '--');

% for atan function
x_atan_interp = x_atan(1:round(length(x_atan)/(interp_num-1)):length(x_atan));
[y_atan_interp, SSE_atan_interp, RMSE_atan_interp,max_err_atan_interp]= my_linear_interp(x_atan, y_atan, x_atan_interp);
figure(2)
plot(x_atan, y_atan, '-', x_atan, y_atan_interp, '--');
