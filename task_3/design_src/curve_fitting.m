clc;
clear all;
x_atan = (0:1/2^14:1-1/2^14);
x_sqrt = (0:1/2^14:1-1/2^14);

% target function value generation
y_sqrt = sqrt(x_sqrt);
y_atan = atan(x_atan);

interp_num = 1024;
% sqrt interpolation
% sqrt equal distance interp
x_sqrt_interp = x_sqrt(1:round(length(x_sqrt)/(interp_num)):length(x_sqrt));
if x_sqrt_interp(end) ~= x_sqrt(end)
    x_sqrt_interp = [x_sqrt_interp, x_sqrt(end)];
end
[y_sqrt_interp_ext, y_sqrt_interp, SSE_sqrt_interp, RMSE_sqrt_interp,max_err_sqrt_interp]= my_linear_interp(x_sqrt, y_sqrt, x_sqrt_interp);
figure(1)
plot(x_sqrt, y_sqrt, '-', x_sqrt, y_sqrt_interp_ext, '--');

k_sqrt_interp = zeros(1, length(x_sqrt_interp)-1);
b_sqrt_interp = zeros(1, length(x_sqrt_interp)-1);
for i = 1:length(x_sqrt_interp)-1
    k_sqrt_interp(i) = (y_sqrt_interp(i+1) - y_sqrt_interp(i))/(x_sqrt_interp(i+1) - x_sqrt_interp(i));
    b_sqrt_interp(i) = x_sqrt_interp(i)*(y_sqrt_interp(i+1) - y_sqrt_interp(i))/(x_sqrt_interp(i+1) - x_sqrt_interp(i));
end
fid = fopen('k_sqrt_interp.txt', 'w');
fid2 = fopen('b_sqrt_interp.txt', 'w');
for iloop=1:length(k_sqrt_interp)
    fprintf(fid, '%3.10f \n', k_sqrt_interp(iloop));
    fprintf(fid2, '%3.10f \n', b_sqrt_interp(iloop));
end
fclose(fid);
fclose(fid2);

% for atan function
x_atan_interp = x_atan(1:round(length(x_atan)/(interp_num-1)):length(x_atan));
[y_atan_interp_ext, y_atan_interp, SSE_atan_interp, RMSE_atan_interp,max_err_atan_interp]= my_linear_interp(x_atan, y_atan, x_atan_interp);
figure(2)
plot(x_atan, y_atan, '-', x_atan, y_atan_interp_ext, '--');
