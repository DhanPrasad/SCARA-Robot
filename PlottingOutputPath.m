xt = out.xt.Data;
yt = out.yt.Data;
xd = out.xd.Data;
yd = out.yd.Data;

figure;
%subplot(2,1,1);
plot(xd, yd, 'r', 'LineWidth', 1); hold on
%subplot(2,1,2);
plot(xt, yt, 'b--', 'LineWidth', 1.5);
axis equal
grid on
xlabel('X (mm)'); ylabel('Y (mm)');
title('Commanded vs. actual pen-tip path');
legend('Commanded (IK)', 'Actual (dynamic sim)', 'Location', 'best');

%Plotting in the Multibody Explorer
pts = [out.endxPID.Data, out.endyPID.Data];
pts = unique(pts, 'rows', 'stable');   % remove duplicate rows (fixes the spline error)

N = 100;                                  % however many points you actually want
idx = round(linspace(1, size(pts,1), N));
pts_few = pts(idx, :);
% Angle
elbow = out.Elbow+90; % Need to be very careful here, wrong addition or subtraction would result problem
shoulder = out.Shoulder;
