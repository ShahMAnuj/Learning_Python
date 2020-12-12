%propt user for input
theta = input('Enter angle (in degrees):');

%{
Note:
  sin(x) and cos(x) treat the unit of 'x' as radians
  sind(x) and cosd(x) treat the unit of 'x' as degrees
Theory:
  [1] The tangent function is defined as tan(x) = sin(x)/cos(x).
  This expression is well-defined, 
  as long as the magnitude of cos(x) is not too close to 0.
  [2] We denote the magnitude of cos(x) as |cos(x)| or abs(cos(x)).
  We define |cos(x)| as being 'too close to 0',
  if |cos(x)| belongs to the interval (-10^-20, +10^-20).
  [3] If |cos(x)| >= 10e-20, 
  then cos(x) doesn't belong to the above interval.
  Otherwise, it does belong to the above interval.
%}   

if abs(cosd(theta)) >= 10e-20
  tand = sind(theta)/cosd(theta);
  fprintf('tan(%f) = %f\n', theta, tand);
else
  fprintf('Your angle is too close to 90 degrees!\n');
endif
